; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_misc.c_sanitize_control_message.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_misc.c_sanitize_control_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"SESS_ID_\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"echo \00", align 1
@D_SHOW_KEYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"auth-token \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sanitize_control_message(i8* %0, %struct.gc_arena* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.gc_arena*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store %struct.gc_arena* %1, %struct.gc_arena** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = add nsw i64 %11, 1
  %13 = load %struct.gc_arena*, %struct.gc_arena** %4, align 8
  %14 = call i8* @gc_malloc(i64 %12, i32 0, %struct.gc_arena* %13)
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %78, %2
  %17 = load i8*, i8** %3, align 8
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %9, align 1
  %19 = load i8, i8* %9, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %81

23:                                               ; preds = %16
  %24 = load i8, i8* %9, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 83
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @strncmp(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 7, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %56

32:                                               ; preds = %27, %23
  %33 = load i8, i8* %9, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 101
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @strncmp(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 4, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %55

41:                                               ; preds = %36, %32
  %42 = load i32, i32* @D_SHOW_KEYS, align 4
  %43 = call i32 @check_debug_level(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %41
  %46 = load i8, i8* %9, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 97
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @strncmp(i8* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 11)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store i32 10, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %54

54:                                               ; preds = %53, %49, %45, %41
  br label %55

55:                                               ; preds = %54, %40
  br label %56

56:                                               ; preds = %55, %31
  %57 = load i8, i8* %9, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 44
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %56
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %8, align 4
  %70 = load i8, i8* %9, align 1
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %6, align 8
  store i8 %70, i8* %71, align 1
  br label %73

73:                                               ; preds = %67, %64
  br label %78

74:                                               ; preds = %61
  %75 = load i8, i8* %9, align 1
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %6, align 8
  store i8 %75, i8* %76, align 1
  br label %78

78:                                               ; preds = %74, %73
  %79 = load i8*, i8** %3, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %3, align 8
  br label %16

81:                                               ; preds = %22
  %82 = load i8*, i8** %6, align 8
  store i8 0, i8* %82, align 1
  %83 = load i8*, i8** %5, align 8
  ret i8* %83
}

declare dso_local i8* @gc_malloc(i64, i32, %struct.gc_arena*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @check_debug_level(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
