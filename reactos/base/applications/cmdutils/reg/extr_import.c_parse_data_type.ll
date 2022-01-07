; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_parse_data_type.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_parse_data_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_type = type { i8*, i32, i32, i32 }
%struct.parser = type { i32, i32 }

@parse_data_type.quote = internal constant [1 x i8] c"\22", align 1
@parse_data_type.hex = internal constant [4 x i8] c"hex:", align 1
@parse_data_type.dword = internal constant [6 x i8] c"dword:", align 1
@parse_data_type.hexp = internal constant [4 x i8] c"hex(", align 1
@parse_data_type.data_types = internal constant [5 x %struct.data_type] [%struct.data_type { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @parse_data_type.quote, i32 0, i32 0), i32 1, i32 128, i32 128 }, %struct.data_type { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @parse_data_type.hex, i32 0, i32 0), i32 4, i32 130, i32 130 }, %struct.data_type { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @parse_data_type.dword, i32 0, i32 0), i32 6, i32 129, i32 129 }, %struct.data_type { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @parse_data_type.hexp, i32 0, i32 0), i32 4, i32 -1, i32 130 }, %struct.data_type zeroinitializer], align 16
@FALSE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser*, i8**)* @parse_data_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_data_type(%struct.parser* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parser*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.data_type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.parser* %0, %struct.parser** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.data_type* getelementptr inbounds ([5 x %struct.data_type], [5 x %struct.data_type]* @parse_data_type.data_types, i64 0, i64 0), %struct.data_type** %6, align 8
  br label %9

9:                                                ; preds = %95, %2
  %10 = load %struct.data_type*, %struct.data_type** %6, align 8
  %11 = getelementptr inbounds %struct.data_type, %struct.data_type* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %98

14:                                               ; preds = %9
  %15 = load %struct.data_type*, %struct.data_type** %6, align 8
  %16 = getelementptr inbounds %struct.data_type, %struct.data_type* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.data_type*, %struct.data_type** %6, align 8
  %21 = getelementptr inbounds %struct.data_type, %struct.data_type* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @strncmpW(i8* %17, i8* %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %95

26:                                               ; preds = %14
  %27 = load %struct.data_type*, %struct.data_type** %6, align 8
  %28 = getelementptr inbounds %struct.data_type, %struct.data_type* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.parser*, %struct.parser** %4, align 8
  %31 = getelementptr inbounds %struct.parser, %struct.parser* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.data_type*, %struct.data_type** %6, align 8
  %33 = getelementptr inbounds %struct.data_type, %struct.data_type* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.parser*, %struct.parser** %4, align 8
  %36 = getelementptr inbounds %struct.parser, %struct.parser* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.data_type*, %struct.data_type** %6, align 8
  %38 = getelementptr inbounds %struct.data_type, %struct.data_type* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i8**, i8*** %5, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = sext i32 %39 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %40, align 8
  %44 = load %struct.data_type*, %struct.data_type** %6, align 8
  %45 = getelementptr inbounds %struct.data_type, %struct.data_type* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %93

48:                                               ; preds = %26
  %49 = load i8**, i8*** %5, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i8**, i8*** %5, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = call signext i8 @tolowerW(i8 signext %57)
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 120
  br i1 %60, label %61, label %63

61:                                               ; preds = %53, %48
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %3, align 4
  br label %100

63:                                               ; preds = %53
  %64 = load i8**, i8*** %5, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @wcstoul(i8* %65, i8** %7, i32 16)
  store i32 %66, i32* %8, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 41
  br i1 %70, label %84, label %71

71:                                               ; preds = %63
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 58
  br i1 %76, label %84, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i64, i64* @errno, align 8
  %82 = load i64, i64* @ERANGE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80, %71, %63
  %85 = load i32, i32* @FALSE, align 4
  store i32 %85, i32* %3, align 4
  br label %100

86:                                               ; preds = %80, %77
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.parser*, %struct.parser** %4, align 8
  %89 = getelementptr inbounds %struct.parser, %struct.parser* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 2
  %92 = load i8**, i8*** %5, align 8
  store i8* %91, i8** %92, align 8
  br label %93

93:                                               ; preds = %86, %26
  %94 = load i32, i32* @TRUE, align 4
  store i32 %94, i32* %3, align 4
  br label %100

95:                                               ; preds = %25
  %96 = load %struct.data_type*, %struct.data_type** %6, align 8
  %97 = getelementptr inbounds %struct.data_type, %struct.data_type* %96, i32 1
  store %struct.data_type* %97, %struct.data_type** %6, align 8
  br label %9

98:                                               ; preds = %9
  %99 = load i32, i32* @FALSE, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %93, %84, %61
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i64 @strncmpW(i8*, i8*, i32) #1

declare dso_local signext i8 @tolowerW(i8 signext) #1

declare dso_local i32 @wcstoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
