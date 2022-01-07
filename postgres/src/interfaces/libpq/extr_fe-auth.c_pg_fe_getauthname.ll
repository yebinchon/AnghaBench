; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-auth.c_pg_fe_getauthname.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-auth.c_pg_fe_getauthname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"could not look up local user ID %d: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"local user with ID %d does not exist\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pg_fe_getauthname(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.passwd, align 8
  %9 = alloca %struct.passwd*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  %11 = call i64 (...) @geteuid()
  store i64 %11, i64* %5, align 8
  %12 = load i32, i32* @BUFSIZ, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  store %struct.passwd* null, %struct.passwd** %9, align 8
  %16 = call i32 (...) @pglock_thread()
  %17 = load i64, i64* %5, align 8
  %18 = trunc i64 %13 to i32
  %19 = call i32 @pqGetpwuid(i64 %17, %struct.passwd* %8, i8* %15, i32 %18, %struct.passwd** %9)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.passwd*, %struct.passwd** %9, align 8
  %21 = icmp ne %struct.passwd* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.passwd*, %struct.passwd** %9, align 8
  %24 = getelementptr inbounds %struct.passwd, %struct.passwd* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %4, align 8
  br label %49

26:                                               ; preds = %1
  %27 = load i64, i64* %2, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load i64, i64* %2, align 8
  %34 = call i32 @libpq_gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %35 = load i64, i64* %5, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* %10, align 4
  %38 = trunc i64 %13 to i32
  %39 = call i32 @strerror_r(i32 %37, i8* %15, i32 %38)
  %40 = call i32 (i64, i32, ...) @printfPQExpBuffer(i64 %33, i32 %34, i32 %36, i32 %39)
  br label %47

41:                                               ; preds = %29
  %42 = load i64, i64* %2, align 8
  %43 = call i32 @libpq_gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i64, i64* %5, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 (i64, i32, ...) @printfPQExpBuffer(i64 %42, i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %41, %32
  br label %48

48:                                               ; preds = %47, %26
  br label %49

49:                                               ; preds = %48, %22
  %50 = load i8*, i8** %4, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load i8*, i8** %4, align 8
  %54 = call i8* @strdup(i8* %53)
  store i8* %54, i8** %3, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i64, i64* %2, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i64, i64* %2, align 8
  %62 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %63 = call i32 (i64, i32, ...) @printfPQExpBuffer(i64 %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %57, %52
  br label %65

65:                                               ; preds = %64, %49
  %66 = call i32 (...) @pgunlock_thread()
  %67 = load i8*, i8** %3, align 8
  %68 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %68)
  ret i8* %67
}

declare dso_local i64 @geteuid(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pglock_thread(...) #1

declare dso_local i32 @pqGetpwuid(i64, %struct.passwd*, i8*, i32, %struct.passwd**) #1

declare dso_local i32 @printfPQExpBuffer(i64, i32, ...) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @strerror_r(i32, i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @pgunlock_thread(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
