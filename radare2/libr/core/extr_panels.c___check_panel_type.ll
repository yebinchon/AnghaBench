; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___check_panel_type.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___check_panel_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@PANEL_CMD_DISASSEMBLY = common dso_local global i32 0, align 4
@PANEL_CMD_DECOMPILER = common dso_local global i32 0, align 4
@PANEL_CMD_DECOMPILER_O = common dso_local global i32 0, align 4
@PANEL_CMD_DISASMSUMMARY = common dso_local global i32 0, align 4
@PANEL_CMD_STACK = common dso_local global i32 0, align 4
@PANEL_CMD_HEXDUMP = common dso_local global i32 0, align 4
@hexdump_rotate = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__check_panel_type(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %2
  store i32 0, i32* %3, align 4
  br label %150

21:                                               ; preds = %17
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @r_str_new(i8* %26)
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @r_str_split(i8* %28, i8 signext 32)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %21
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @free(i8* %33)
  store i32 0, i32* %3, align 4
  br label %150

35:                                               ; preds = %21
  %36 = load i8*, i8** %6, align 8
  %37 = call i8* @r_str_word_get0(i8* %36, i32 0)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i64 @R_STR_ISEMPTY(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @free(i8* %42)
  store i32 0, i32* %3, align 4
  br label %150

44:                                               ; preds = %35
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @strlen(i8* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* @PANEL_CMD_DISASSEMBLY, align 4
  %49 = call i64 @strcmp(i8* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %90, label %51

51:                                               ; preds = %44
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @strncmp(i8* %52, i8* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %87, label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* @PANEL_CMD_DECOMPILER, align 4
  %64 = call i64 @strcmp(i8* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %57
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* @PANEL_CMD_DECOMPILER_O, align 4
  %73 = call i64 @strcmp(i8* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %66
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* @PANEL_CMD_DISASMSUMMARY, align 4
  %82 = call i64 @strcmp(i8* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @free(i8* %85)
  store i32 1, i32* %3, align 4
  br label %150

87:                                               ; preds = %75, %66, %57, %51
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @free(i8* %88)
  store i32 0, i32* %3, align 4
  br label %150

90:                                               ; preds = %44
  %91 = load i8*, i8** %5, align 8
  %92 = load i32, i32* @PANEL_CMD_STACK, align 4
  %93 = call i64 @strcmp(i8* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %90
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* @PANEL_CMD_STACK, align 4
  %98 = call i64 @strcmp(i8* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @free(i8* %101)
  store i32 1, i32* %3, align 4
  br label %150

103:                                              ; preds = %95
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @free(i8* %104)
  store i32 0, i32* %3, align 4
  br label %150

106:                                              ; preds = %90
  %107 = load i8*, i8** %5, align 8
  %108 = load i32, i32* @PANEL_CMD_HEXDUMP, align 4
  %109 = call i64 @strcmp(i8* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %136, label %111

111:                                              ; preds = %106
  store i32 0, i32* %10, align 4
  br label %112

112:                                              ; preds = %130, %111
  %113 = load i32, i32* %10, align 4
  %114 = load i32*, i32** @hexdump_rotate, align 8
  %115 = call i32 @COUNT(i32* %114)
  %116 = icmp slt i32 %113, %115
  br i1 %116, label %117, label %133

117:                                              ; preds = %112
  %118 = load i8*, i8** %6, align 8
  %119 = load i32*, i32** @hexdump_rotate, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @strcmp(i8* %118, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %117
  %127 = load i8*, i8** %6, align 8
  %128 = call i32 @free(i8* %127)
  store i32 1, i32* %3, align 4
  br label %150

129:                                              ; preds = %117
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  br label %112

133:                                              ; preds = %112
  %134 = load i8*, i8** %6, align 8
  %135 = call i32 @free(i8* %134)
  store i32 0, i32* %3, align 4
  br label %150

136:                                              ; preds = %106
  %137 = load i8*, i8** %6, align 8
  %138 = call i32 @free(i8* %137)
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load i8*, i8** %5, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @strncmp(i8* %143, i8* %144, i32 %145)
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %136, %133, %126, %103, %100, %87, %84, %41, %32, %20
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i8* @r_str_new(i8*) #1

declare dso_local i32 @r_str_split(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @r_str_word_get0(i8*, i32) #1

declare dso_local i64 @R_STR_ISEMPTY(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @COUNT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
