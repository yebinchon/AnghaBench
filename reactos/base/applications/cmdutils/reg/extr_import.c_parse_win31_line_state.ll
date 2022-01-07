; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_parse_win31_line_state.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_parse_win31_line_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i8*, i32, i32, i32*, i32 }

@parse_win31_line_state.hkcr = internal global [17 x i8] c"HKEY_CLASSES_ROOT", align 16
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@STRING_OPEN_KEY_FAILED = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@SET_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parser*, i8*)* @parse_win31_line_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_win31_line_state(%struct.parser* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.parser* %0, %struct.parser** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.parser*, %struct.parser** %4, align 8
  %10 = getelementptr inbounds %struct.parser, %struct.parser* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i8* @get_line(i32 %11)
  store i8* %12, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %117

15:                                               ; preds = %2
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @parse_win31_line_state.hkcr, i64 0, i64 0))
  %18 = call i64 @strncmpW(i8* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @parse_win31_line_state.hkcr, i64 0, i64 0), i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %3, align 8
  br label %117

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %42, %22
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @isspaceW(i8 signext %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %31, %23
  %41 = phi i1 [ false, %23 ], [ %39, %31 ]
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %23

45:                                               ; preds = %40
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8* %49, i8** %7, align 8
  br label %50

50:                                               ; preds = %62, %45
  %51 = load i8*, i8** %7, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 32
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** %7, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 9
  br label %60

60:                                               ; preds = %55, %50
  %61 = phi i1 [ true, %50 ], [ %59, %55 ]
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %7, align 8
  br label %50

65:                                               ; preds = %60
  %66 = load i8*, i8** %7, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 61
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %7, align 8
  br label %73

73:                                               ; preds = %70, %65
  %74 = load i8*, i8** %7, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 32
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %7, align 8
  br label %81

81:                                               ; preds = %78, %73
  %82 = load i8*, i8** %6, align 8
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  store i8 0, i8* %85, align 1
  %86 = load %struct.parser*, %struct.parser** %4, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = call i64 @open_key(%struct.parser* %86, i8* %87)
  %89 = load i64, i64* @ERROR_SUCCESS, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %81
  %92 = load i32, i32* @STRING_OPEN_KEY_FAILED, align 4
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @output_message(i32 %92, i8* %93)
  %95 = load i8*, i8** %6, align 8
  store i8* %95, i8** %3, align 8
  br label %117

96:                                               ; preds = %81
  %97 = load %struct.parser*, %struct.parser** %4, align 8
  %98 = getelementptr inbounds %struct.parser, %struct.parser* %97, i32 0, i32 3
  store i32* null, i32** %98, align 8
  %99 = load i32, i32* @REG_SZ, align 4
  %100 = load %struct.parser*, %struct.parser** %4, align 8
  %101 = getelementptr inbounds %struct.parser, %struct.parser* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load i8*, i8** %7, align 8
  %103 = load %struct.parser*, %struct.parser** %4, align 8
  %104 = getelementptr inbounds %struct.parser, %struct.parser* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @lstrlenW(i8* %105)
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 1
  %110 = trunc i64 %109 to i32
  %111 = load %struct.parser*, %struct.parser** %4, align 8
  %112 = getelementptr inbounds %struct.parser, %struct.parser* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  %113 = load %struct.parser*, %struct.parser** %4, align 8
  %114 = load i32, i32* @SET_VALUE, align 4
  %115 = call i32 @set_state(%struct.parser* %113, i32 %114)
  %116 = load i8*, i8** %7, align 8
  store i8* %116, i8** %3, align 8
  br label %117

117:                                              ; preds = %96, %91, %20, %14
  %118 = load i8*, i8** %3, align 8
  ret i8* %118
}

declare dso_local i8* @get_line(i32) #1

declare dso_local i64 @strncmpW(i8*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @isspaceW(i8 signext) #1

declare dso_local i64 @open_key(%struct.parser*, i8*) #1

declare dso_local i32 @output_message(i32, i8*) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i32 @set_state(%struct.parser*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
