; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_inffile.c_key_name_state.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_inffile.c_key_name_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i8* }

@VALUE_NAME = common dso_local global i32 0, align 4
@LEADING_SPACES = common dso_local global i32 0, align 4
@LINE_START = common dso_local global i32 0, align 4
@COMMENT = common dso_local global i32 0, align 4
@KEY_NAME = common dso_local global i32 0, align 4
@QUOTES = common dso_local global i32 0, align 4
@EOL_BACKSLASH = common dso_local global i32 0, align 4
@TRAILING_SPACES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parser*, i8*)* @key_name_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @key_name_state(%struct.parser* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.parser*, %struct.parser** %4, align 8
  %9 = getelementptr inbounds %struct.parser, %struct.parser* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %6, align 8
  br label %12

12:                                               ; preds = %117, %2
  %13 = load %struct.parser*, %struct.parser** %4, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @is_eol(%struct.parser* %13, i8* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %120

18:                                               ; preds = %12
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 44
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %120

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  switch i32 %27, label %96 [
    i32 61, label %28
    i32 59, label %49
    i32 34, label %66
    i32 92, label %82
  ]

28:                                               ; preds = %24
  %29 = load %struct.parser*, %struct.parser** %4, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @push_token(%struct.parser* %29, i8* %30)
  %32 = load %struct.parser*, %struct.parser** %4, align 8
  %33 = call i32 @add_field_from_token(%struct.parser* %32, i32 1)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i8* null, i8** %3, align 8
  br label %128

36:                                               ; preds = %28
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load %struct.parser*, %struct.parser** %4, align 8
  %40 = getelementptr inbounds %struct.parser, %struct.parser* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.parser*, %struct.parser** %4, align 8
  %42 = load i32, i32* @VALUE_NAME, align 4
  %43 = call i32 @push_state(%struct.parser* %41, i32 %42)
  %44 = load %struct.parser*, %struct.parser** %4, align 8
  %45 = load i32, i32* @LEADING_SPACES, align 4
  %46 = call i32 @set_state(%struct.parser* %44, i32 %45)
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %48, i8** %3, align 8
  br label %128

49:                                               ; preds = %24
  %50 = load %struct.parser*, %struct.parser** %4, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @push_token(%struct.parser* %50, i8* %51)
  %53 = load %struct.parser*, %struct.parser** %4, align 8
  %54 = call i32 @add_field_from_token(%struct.parser* %53, i32 0)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  store i8* null, i8** %3, align 8
  br label %128

57:                                               ; preds = %49
  %58 = load %struct.parser*, %struct.parser** %4, align 8
  %59 = load i32, i32* @LINE_START, align 4
  %60 = call i32 @push_state(%struct.parser* %58, i32 %59)
  %61 = load %struct.parser*, %struct.parser** %4, align 8
  %62 = load i32, i32* @COMMENT, align 4
  %63 = call i32 @set_state(%struct.parser* %61, i32 %62)
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8* %65, i8** %3, align 8
  br label %128

66:                                               ; preds = %24
  %67 = load %struct.parser*, %struct.parser** %4, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @push_token(%struct.parser* %67, i8* %68)
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load %struct.parser*, %struct.parser** %4, align 8
  %73 = getelementptr inbounds %struct.parser, %struct.parser* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load %struct.parser*, %struct.parser** %4, align 8
  %75 = load i32, i32* @KEY_NAME, align 4
  %76 = call i32 @push_state(%struct.parser* %74, i32 %75)
  %77 = load %struct.parser*, %struct.parser** %4, align 8
  %78 = load i32, i32* @QUOTES, align 4
  %79 = call i32 @set_state(%struct.parser* %77, i32 %78)
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  store i8* %81, i8** %3, align 8
  br label %128

82:                                               ; preds = %24
  %83 = load %struct.parser*, %struct.parser** %4, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @push_token(%struct.parser* %83, i8* %84)
  %86 = load i8*, i8** %6, align 8
  %87 = load %struct.parser*, %struct.parser** %4, align 8
  %88 = getelementptr inbounds %struct.parser, %struct.parser* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  %89 = load %struct.parser*, %struct.parser** %4, align 8
  %90 = load i32, i32* @KEY_NAME, align 4
  %91 = call i32 @push_state(%struct.parser* %89, i32 %90)
  %92 = load %struct.parser*, %struct.parser** %4, align 8
  %93 = load i32, i32* @EOL_BACKSLASH, align 4
  %94 = call i32 @set_state(%struct.parser* %92, i32 %93)
  %95 = load i8*, i8** %6, align 8
  store i8* %95, i8** %3, align 8
  br label %128

96:                                               ; preds = %24
  %97 = load i8*, i8** %6, align 8
  %98 = load i8, i8* %97, align 1
  %99 = call i32 @isspace(i8 zeroext %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  store i8* %103, i8** %7, align 8
  br label %115

104:                                              ; preds = %96
  %105 = load %struct.parser*, %struct.parser** %4, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 @push_token(%struct.parser* %105, i8* %106)
  %108 = load %struct.parser*, %struct.parser** %4, align 8
  %109 = load i32, i32* @KEY_NAME, align 4
  %110 = call i32 @push_state(%struct.parser* %108, i32 %109)
  %111 = load %struct.parser*, %struct.parser** %4, align 8
  %112 = load i32, i32* @TRAILING_SPACES, align 4
  %113 = call i32 @set_state(%struct.parser* %111, i32 %112)
  %114 = load i8*, i8** %6, align 8
  store i8* %114, i8** %3, align 8
  br label %128

115:                                              ; preds = %101
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116
  %118 = load i8*, i8** %6, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %6, align 8
  br label %12

120:                                              ; preds = %23, %12
  %121 = load %struct.parser*, %struct.parser** %4, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = call i32 @push_token(%struct.parser* %121, i8* %122)
  %124 = load %struct.parser*, %struct.parser** %4, align 8
  %125 = load i32, i32* @VALUE_NAME, align 4
  %126 = call i32 @set_state(%struct.parser* %124, i32 %125)
  %127 = load i8*, i8** %6, align 8
  store i8* %127, i8** %3, align 8
  br label %128

128:                                              ; preds = %120, %104, %82, %66, %57, %56, %36, %35
  %129 = load i8*, i8** %3, align 8
  ret i8* %129
}

declare dso_local i32 @is_eol(%struct.parser*, i8*) #1

declare dso_local i32 @push_token(%struct.parser*, i8*) #1

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
