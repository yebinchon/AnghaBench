; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_eia608.c_eia608_dump.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_eia608.c_eia608_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"parity failed\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"basicna\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"specialna\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"westeu\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"xds\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"midrowchange\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"norpak\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"preamble\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"preamble %d %d %d %d %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"unknown_control\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"eia608_tab_offset_0\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"eia608_tab_offset_1\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"eia608_tab_offset_2\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"eia608_tab_offset_3\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"eia608_control_resume_caption_loading\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"eia608_control_backspace\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"eia608_control_alarm_off\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"eia608_control_alarm_on\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"eia608_control_delete_to_end_of_row\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"eia608_control_roll_up_2\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"eia608_control_roll_up_3\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"eia608_control_roll_up_4\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"eia608_control_resume_direct_captioning\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"eia608_control_text_restart\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"eia608_control_text_resume_text_display\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"eia608_control_erase_display_memory\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"eia608_control_carriage_return\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"eia608_control_erase_non_displayed_memory\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"eia608_control_end_of_caption\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"unhandled\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"cc %04X (%04X) '%s' '%s' (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eia608_dump(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [5 x i8], align 1
  %6 = alloca [5 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %4, align 8
  %11 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %11, align 1
  %12 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %12, align 1
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @eia608_parity_varify(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %116

17:                                               ; preds = %1
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @eia608_parity_strip(i32 %18)
  %20 = icmp eq i32 0, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %115

22:                                               ; preds = %17
  %23 = load i32, i32* %2, align 4
  %24 = call i64 @eia608_is_basicna(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %27 = load i32, i32* %2, align 4
  %28 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %29 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %30 = call i32 @eia608_to_utf8(i32 %27, i32* %9, i8* %28, i8* %29)
  br label %114

31:                                               ; preds = %22
  %32 = load i32, i32* %2, align 4
  %33 = call i64 @eia608_is_specialna(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  %36 = load i32, i32* %2, align 4
  %37 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %38 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %39 = call i32 @eia608_to_utf8(i32 %36, i32* %9, i8* %37, i8* %38)
  br label %113

40:                                               ; preds = %31
  %41 = load i32, i32* %2, align 4
  %42 = call i64 @eia608_is_westeu(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  %45 = load i32, i32* %2, align 4
  %46 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %47 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %48 = call i32 @eia608_to_utf8(i32 %45, i32* %9, i8* %46, i8* %47)
  br label %112

49:                                               ; preds = %40
  %50 = load i32, i32* %2, align 4
  %51 = call i64 @eia608_is_xds(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %111

54:                                               ; preds = %49
  %55 = load i32, i32* %2, align 4
  %56 = call i64 @eia608_is_midrowchange(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  br label %110

59:                                               ; preds = %54
  %60 = load i32, i32* %2, align 4
  %61 = call i64 @eia608_is_norpak(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  br label %109

64:                                               ; preds = %59
  %65 = load i32, i32* %2, align 4
  %66 = call i64 @eia608_is_preamble(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @eia608_parse_preamble(i32 %69, i32* %7, i32* %8, i32* %3, i32* %9, i32* %10)
  %71 = load i32, i32* @stderr, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %72, i32 %73, i32 %74, i32 %75, i32 %76)
  br label %108

78:                                               ; preds = %64
  %79 = load i32, i32* %2, align 4
  %80 = call i64 @eia608_is_control(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %78
  %83 = load i32, i32* %2, align 4
  %84 = call i32 @eia608_parse_control(i32 %83, i32* %9)
  switch i32 %84, label %85 [
    i32 131, label %86
    i32 130, label %87
    i32 129, label %88
    i32 128, label %89
    i32 138, label %90
    i32 144, label %91
    i32 146, label %92
    i32 145, label %93
    i32 142, label %94
    i32 136, label %95
    i32 135, label %96
    i32 134, label %97
    i32 137, label %98
    i32 133, label %99
    i32 132, label %100
    i32 140, label %101
    i32 143, label %102
    i32 139, label %103
    i32 141, label %104
  ]

85:                                               ; preds = %82
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8** %4, align 8
  br label %105

86:                                               ; preds = %82
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8** %4, align 8
  br label %105

87:                                               ; preds = %82
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8** %4, align 8
  br label %105

88:                                               ; preds = %82
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8** %4, align 8
  br label %105

89:                                               ; preds = %82
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i8** %4, align 8
  br label %105

90:                                               ; preds = %82
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i8** %4, align 8
  br label %105

91:                                               ; preds = %82
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i8** %4, align 8
  br label %105

92:                                               ; preds = %82
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i8** %4, align 8
  br label %105

93:                                               ; preds = %82
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i8** %4, align 8
  br label %105

94:                                               ; preds = %82
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0), i8** %4, align 8
  br label %105

95:                                               ; preds = %82
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i8** %4, align 8
  br label %105

96:                                               ; preds = %82
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i8** %4, align 8
  br label %105

97:                                               ; preds = %82
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i8** %4, align 8
  br label %105

98:                                               ; preds = %82
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8** %4, align 8
  br label %105

99:                                               ; preds = %82
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), i8** %4, align 8
  br label %105

100:                                              ; preds = %82
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0), i8** %4, align 8
  br label %105

101:                                              ; preds = %82
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0), i8** %4, align 8
  br label %105

102:                                              ; preds = %82
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i8** %4, align 8
  br label %105

103:                                              ; preds = %82
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i64 0, i64 0), i8** %4, align 8
  br label %105

104:                                              ; preds = %82
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i64 0, i64 0), i8** %4, align 8
  br label %105

105:                                              ; preds = %104, %103, %102, %101, %100, %99, %98, %97, %96, %95, %94, %93, %92, %91, %90, %89, %88, %87, %86, %85
  br label %107

106:                                              ; preds = %78
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8** %4, align 8
  br label %107

107:                                              ; preds = %106, %105
  br label %108

108:                                              ; preds = %107, %68
  br label %109

109:                                              ; preds = %108, %63
  br label %110

110:                                              ; preds = %109, %58
  br label %111

111:                                              ; preds = %110, %53
  br label %112

112:                                              ; preds = %111, %44
  br label %113

113:                                              ; preds = %112, %35
  br label %114

114:                                              ; preds = %113, %26
  br label %115

115:                                              ; preds = %114, %21
  br label %116

116:                                              ; preds = %115, %16
  %117 = load i32, i32* @stderr, align 4
  %118 = load i32, i32* %2, align 4
  %119 = load i32, i32* %2, align 4
  %120 = call i32 @eia608_parity_strip(i32 %119)
  %121 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %122 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %123 = load i8*, i8** %4, align 8
  %124 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0), i32 %118, i32 %120, i8* %121, i8* %122, i8* %123)
  ret void
}

declare dso_local i32 @eia608_parity_varify(i32) #1

declare dso_local i32 @eia608_parity_strip(i32) #1

declare dso_local i64 @eia608_is_basicna(i32) #1

declare dso_local i32 @eia608_to_utf8(i32, i32*, i8*, i8*) #1

declare dso_local i64 @eia608_is_specialna(i32) #1

declare dso_local i64 @eia608_is_westeu(i32) #1

declare dso_local i64 @eia608_is_xds(i32) #1

declare dso_local i64 @eia608_is_midrowchange(i32) #1

declare dso_local i64 @eia608_is_norpak(i32) #1

declare dso_local i64 @eia608_is_preamble(i32) #1

declare dso_local i32 @eia608_parse_preamble(i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i64 @eia608_is_control(i32) #1

declare dso_local i32 @eia608_parse_control(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
