; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_msg.c_reopen_file.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_msg.c_reopen_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_global = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@mp_msg_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to open %s file '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**, i32**, i8*, %struct.mpv_global*)* @reopen_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reopen_file(i8* %0, i8** %1, i32** %2, i8* %3, %struct.mpv_global* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mpv_global*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.mpv_global* %4, %struct.mpv_global** %10, align 8
  %15 = call i8* @talloc_new(i32* null)
  store i8* %15, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load i8*, i8** %11, align 8
  %17 = load %struct.mpv_global*, %struct.mpv_global** %10, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i8* @mp_get_user_path(i8* %16, %struct.mpv_global* %17, i8* %18)
  store i8* %19, i8** %13, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %23

23:                                               ; preds = %22, %5
  %24 = call i32 @pthread_mutex_lock(i32* @mp_msg_lock)
  %25 = load i8**, i8*** %7, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i8**, i8*** %7, align 8
  %30 = load i8*, i8** %29, align 8
  br label %32

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %28
  %33 = phi i8* [ %30, %28 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %31 ]
  store i8* %33, i8** %14, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = call i64 @strcmp(i8* %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %32
  %39 = load i32**, i32*** %8, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32**, i32*** %8, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @fclose(i32* %44)
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32**, i32*** %8, align 8
  store i32* null, i32** %47, align 8
  %48 = load i8**, i8*** %7, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @talloc_free(i8* %49)
  %51 = load i8*, i8** %13, align 8
  %52 = call i8* @talloc_strdup(i32* null, i8* %51)
  %53 = load i8**, i8*** %7, align 8
  store i8* %52, i8** %53, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %46
  %59 = load i8*, i8** %13, align 8
  %60 = call i32* @fopen(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32**, i32*** %8, align 8
  store i32* %60, i32** %61, align 8
  %62 = load i32**, i32*** %8, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %58, %46
  br label %68

68:                                               ; preds = %67, %32
  %69 = call i32 @pthread_mutex_unlock(i32* @mp_msg_lock)
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load %struct.mpv_global*, %struct.mpv_global** %10, align 8
  %74 = getelementptr inbounds %struct.mpv_global, %struct.mpv_global* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %9, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = call i32 @mp_err(i32 %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %76, i8* %77)
  br label %79

79:                                               ; preds = %72, %68
  %80 = load i8*, i8** %11, align 8
  %81 = call i32 @talloc_free(i8* %80)
  ret void
}

declare dso_local i8* @talloc_new(i32*) #1

declare dso_local i8* @mp_get_user_path(i8*, %struct.mpv_global*, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i8* @talloc_strdup(i32*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @mp_err(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
