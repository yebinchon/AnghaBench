; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/extr_swift-sd.c_swift_demangle_cmd.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/extr_swift-sd.c_swift_demangle_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@swift_demangle_cmd.swift_demangle = internal global i8* null, align 8
@have_swift_demangle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"swift-demangle\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"xcrun\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%s swift-demangle\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"%s -compact '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @swift_demangle_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @swift_demangle_cmd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @have_swift_demangle, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %38

8:                                                ; preds = %1
  %9 = load i8*, i8** @swift_demangle_cmd.swift_demangle, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %37, label %11

11:                                               ; preds = %8
  store i32 0, i32* @have_swift_demangle, align 4
  %12 = call i8* @r_file_path(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** @swift_demangle_cmd.swift_demangle, align 8
  %13 = load i8*, i8** @swift_demangle_cmd.swift_demangle, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i8*, i8** @swift_demangle_cmd.swift_demangle, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %15, %11
  %20 = call i8* @r_file_path(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i8*, i8** @swift_demangle_cmd.swift_demangle, align 8
  %29 = call i32 @free(i8* %28)
  %30 = load i8*, i8** %4, align 8
  %31 = call i8* @r_str_newf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  store i8* %31, i8** @swift_demangle_cmd.swift_demangle, align 8
  store i32 1, i32* @have_swift_demangle, align 4
  br label %32

32:                                               ; preds = %27, %23
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @free(i8* %33)
  br label %35

35:                                               ; preds = %32, %19
  br label %36

36:                                               ; preds = %35, %15
  br label %37

37:                                               ; preds = %36, %8
  br label %38

38:                                               ; preds = %37, %1
  %39 = load i8*, i8** @swift_demangle_cmd.swift_demangle, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %67

41:                                               ; preds = %38
  %42 = load i8*, i8** %3, align 8
  %43 = call i64 @strstr(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %3, align 8
  %47 = call i64 @strstr(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %41
  store i8* null, i8** %2, align 8
  br label %68

50:                                               ; preds = %45
  %51 = load i8*, i8** @swift_demangle_cmd.swift_demangle, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = call i8* @r_sys_cmd_strf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %51, i8* %52)
  store i8* %53, i8** %5, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i8*, i8** %5, align 8
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @free(i8* %61)
  store i8* null, i8** %5, align 8
  br label %63

63:                                               ; preds = %60, %56, %50
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @r_str_trim(i8* %64)
  %66 = load i8*, i8** %5, align 8
  store i8* %66, i8** %2, align 8
  br label %68

67:                                               ; preds = %38
  store i8* null, i8** %2, align 8
  br label %68

68:                                               ; preds = %67, %63, %49
  %69 = load i8*, i8** %2, align 8
  ret i8* %69
}

declare dso_local i8* @r_file_path(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @r_str_newf(i8*, i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i8* @r_sys_cmd_strf(i8*, i8*, i8*) #1

declare dso_local i32 @r_str_trim(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
