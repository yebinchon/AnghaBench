; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_inffile.c_value_name_state.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_inffile.c_value_name_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i32* }

@LINE_START = common dso_local global i32 0, align 4
@COMMENT = common dso_local global i32 0, align 4
@VALUE_NAME = common dso_local global i32 0, align 4
@LEADING_SPACES = common dso_local global i32 0, align 4
@QUOTES = common dso_local global i32 0, align 4
@EOL_BACKSLASH = common dso_local global i32 0, align 4
@TRAILING_SPACES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.parser*, i32*)* @value_name_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @value_name_state(%struct.parser* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.parser*, %struct.parser** %4, align 8
  %9 = getelementptr inbounds %struct.parser, %struct.parser* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %5, align 8
  store i32* %11, i32** %6, align 8
  br label %12

12:                                               ; preds = %111, %2
  %13 = load %struct.parser*, %struct.parser** %4, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @is_eol(%struct.parser* %13, i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %114

18:                                               ; preds = %12
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %89 [
    i32 59, label %21
    i32 44, label %38
    i32 34, label %59
    i32 92, label %75
  ]

21:                                               ; preds = %18
  %22 = load %struct.parser*, %struct.parser** %4, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @push_token(%struct.parser* %22, i32* %23)
  %25 = load %struct.parser*, %struct.parser** %4, align 8
  %26 = call i32 @add_field_from_token(%struct.parser* %25, i32 0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store i32* null, i32** %3, align 8
  br label %127

29:                                               ; preds = %21
  %30 = load %struct.parser*, %struct.parser** %4, align 8
  %31 = load i32, i32* @LINE_START, align 4
  %32 = call i32 @push_state(%struct.parser* %30, i32 %31)
  %33 = load %struct.parser*, %struct.parser** %4, align 8
  %34 = load i32, i32* @COMMENT, align 4
  %35 = call i32 @set_state(%struct.parser* %33, i32 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32* %37, i32** %3, align 8
  br label %127

38:                                               ; preds = %18
  %39 = load %struct.parser*, %struct.parser** %4, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @push_token(%struct.parser* %39, i32* %40)
  %42 = load %struct.parser*, %struct.parser** %4, align 8
  %43 = call i32 @add_field_from_token(%struct.parser* %42, i32 0)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  store i32* null, i32** %3, align 8
  br label %127

46:                                               ; preds = %38
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load %struct.parser*, %struct.parser** %4, align 8
  %50 = getelementptr inbounds %struct.parser, %struct.parser* %49, i32 0, i32 0
  store i32* %48, i32** %50, align 8
  %51 = load %struct.parser*, %struct.parser** %4, align 8
  %52 = load i32, i32* @VALUE_NAME, align 4
  %53 = call i32 @push_state(%struct.parser* %51, i32 %52)
  %54 = load %struct.parser*, %struct.parser** %4, align 8
  %55 = load i32, i32* @LEADING_SPACES, align 4
  %56 = call i32 @set_state(%struct.parser* %54, i32 %55)
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32* %58, i32** %3, align 8
  br label %127

59:                                               ; preds = %18
  %60 = load %struct.parser*, %struct.parser** %4, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @push_token(%struct.parser* %60, i32* %61)
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load %struct.parser*, %struct.parser** %4, align 8
  %66 = getelementptr inbounds %struct.parser, %struct.parser* %65, i32 0, i32 0
  store i32* %64, i32** %66, align 8
  %67 = load %struct.parser*, %struct.parser** %4, align 8
  %68 = load i32, i32* @VALUE_NAME, align 4
  %69 = call i32 @push_state(%struct.parser* %67, i32 %68)
  %70 = load %struct.parser*, %struct.parser** %4, align 8
  %71 = load i32, i32* @QUOTES, align 4
  %72 = call i32 @set_state(%struct.parser* %70, i32 %71)
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32* %74, i32** %3, align 8
  br label %127

75:                                               ; preds = %18
  %76 = load %struct.parser*, %struct.parser** %4, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @push_token(%struct.parser* %76, i32* %77)
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.parser*, %struct.parser** %4, align 8
  %81 = getelementptr inbounds %struct.parser, %struct.parser* %80, i32 0, i32 0
  store i32* %79, i32** %81, align 8
  %82 = load %struct.parser*, %struct.parser** %4, align 8
  %83 = load i32, i32* @VALUE_NAME, align 4
  %84 = call i32 @push_state(%struct.parser* %82, i32 %83)
  %85 = load %struct.parser*, %struct.parser** %4, align 8
  %86 = load i32, i32* @EOL_BACKSLASH, align 4
  %87 = call i32 @set_state(%struct.parser* %85, i32 %86)
  %88 = load i32*, i32** %6, align 8
  store i32* %88, i32** %3, align 8
  br label %127

89:                                               ; preds = %18
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %90, align 4
  %92 = trunc i32 %91 to i8
  %93 = call i32 @isspace(i8 zeroext %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %89
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  store i32* %97, i32** %7, align 8
  br label %109

98:                                               ; preds = %89
  %99 = load %struct.parser*, %struct.parser** %4, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @push_token(%struct.parser* %99, i32* %100)
  %102 = load %struct.parser*, %struct.parser** %4, align 8
  %103 = load i32, i32* @VALUE_NAME, align 4
  %104 = call i32 @push_state(%struct.parser* %102, i32 %103)
  %105 = load %struct.parser*, %struct.parser** %4, align 8
  %106 = load i32, i32* @TRAILING_SPACES, align 4
  %107 = call i32 @set_state(%struct.parser* %105, i32 %106)
  %108 = load i32*, i32** %6, align 8
  store i32* %108, i32** %3, align 8
  br label %127

109:                                              ; preds = %95
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %110
  %112 = load i32*, i32** %6, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %6, align 8
  br label %12

114:                                              ; preds = %12
  %115 = load %struct.parser*, %struct.parser** %4, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @push_token(%struct.parser* %115, i32* %116)
  %118 = load %struct.parser*, %struct.parser** %4, align 8
  %119 = call i32 @add_field_from_token(%struct.parser* %118, i32 0)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %114
  store i32* null, i32** %3, align 8
  br label %127

122:                                              ; preds = %114
  %123 = load %struct.parser*, %struct.parser** %4, align 8
  %124 = load i32, i32* @LINE_START, align 4
  %125 = call i32 @set_state(%struct.parser* %123, i32 %124)
  %126 = load i32*, i32** %6, align 8
  store i32* %126, i32** %3, align 8
  br label %127

127:                                              ; preds = %122, %121, %98, %75, %59, %46, %45, %29, %28
  %128 = load i32*, i32** %3, align 8
  ret i32* %128
}

declare dso_local i32 @is_eol(%struct.parser*, i32*) #1

declare dso_local i32 @push_token(%struct.parser*, i32*) #1

declare dso_local i32 @add_field_from_token(%struct.parser*, i32) #1

declare dso_local i32 @push_state(%struct.parser*, i32) #1

declare dso_local i32 @set_state(%struct.parser*, i32) #1

declare dso_local i32 @isspace(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
