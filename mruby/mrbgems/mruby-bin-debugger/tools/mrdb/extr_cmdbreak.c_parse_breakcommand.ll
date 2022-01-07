; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_cmdbreak.c_parse_breakcommand.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_cmdbreak.c_parse_breakcommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8**, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i64 }

@BREAK_ERR_MSG_BLANK = common dso_local global i32 0, align 4
@BREAK_ERR_MSG_INVALIDSTR = common dso_local global i8* null, align 8
@BREAK_ERR_MSG_RANGEOVER = common dso_local global i32 0, align 4
@BREAK_ERR_MSG_INVALIDMETHOD = common dso_local global i8* null, align 8
@BREAK_ERR_MSG_INVALIDCLASS = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_breakcommand(i32* %0, %struct.TYPE_5__* %1, i8** %2, i32* %3, i8** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %14, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sle i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i32, i32* @BREAK_ERR_MSG_BLANK, align 4
  %28 = call i32 @puts(i32 %27)
  store i32 128, i32* %7, align 4
  br label %150

29:                                               ; preds = %6
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i8**, i8*** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %15, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = call i8* @strrchr(i8* %35, i8 signext 58)
  store i8* %36, i8** %16, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load i8*, i8** %15, align 8
  store i8* %39, i8** %16, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = call i32 @check_bptype(i8* %40)
  store i32 %41, i32* %17, align 4
  br label %55

42:                                               ; preds = %29
  %43 = load i8*, i8** %16, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = icmp eq i8* %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i8*, i8** @BREAK_ERR_MSG_INVALIDSTR, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = call i32 @printf(i8* %47, i8* %48)
  store i32 128, i32* %7, align 4
  br label %150

50:                                               ; preds = %42
  %51 = load i8*, i8** %16, align 8
  store i8 0, i8* %51, align 1
  %52 = load i8*, i8** %16, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %16, align 8
  %54 = call i32 @check_bptype(i8* %53)
  store i32 %54, i32* %17, align 4
  br label %55

55:                                               ; preds = %50, %38
  %56 = load i32, i32* %17, align 4
  switch i32 %56, label %147 [
    i32 130, label %57
    i32 129, label %93
    i32 128, label %146
  ]

57:                                               ; preds = %55
  %58 = load i32, i32* %18, align 4
  %59 = load i8*, i8** %16, align 8
  %60 = call i32 @STRTOUL(i32 %58, i8* %59)
  %61 = load i32, i32* %18, align 4
  %62 = icmp sle i32 %61, 65535
  br i1 %62, label %63, label %89

63:                                               ; preds = %57
  %64 = load i32, i32* %18, align 4
  %65 = load i32*, i32** %11, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i8*, i8** %16, align 8
  %67 = load i8*, i8** %15, align 8
  %68 = icmp eq i8* %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %63
  %70 = load i32*, i32** %8, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %76, %81
  %83 = call i8* @mrb_debug_get_filename(i32* %70, %struct.TYPE_7__* %73, i64 %82)
  br label %86

84:                                               ; preds = %63
  %85 = load i8*, i8** %15, align 8
  br label %86

86:                                               ; preds = %84, %69
  %87 = phi i8* [ %83, %69 ], [ %85, %84 ]
  %88 = load i8**, i8*** %10, align 8
  store i8* %87, i8** %88, align 8
  br label %92

89:                                               ; preds = %57
  %90 = load i32, i32* @BREAK_ERR_MSG_RANGEOVER, align 4
  %91 = call i32 @puts(i32 %90)
  store i32 128, i32* %17, align 4
  br label %92

92:                                               ; preds = %89, %86
  br label %148

93:                                               ; preds = %55
  %94 = load i8*, i8** %16, align 8
  %95 = load i8*, i8** %15, align 8
  %96 = icmp eq i8* %94, %95
  br i1 %96, label %97, label %121

97:                                               ; preds = %93
  %98 = load i8*, i8** %16, align 8
  %99 = load i8, i8* %98, align 1
  %100 = call i32 @ISUPPER(i8 signext %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %97
  %103 = load i8*, i8** %16, align 8
  %104 = load i8, i8* %103, align 1
  %105 = call i32 @ISLOWER(i8 signext %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load i8*, i8** %16, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 95
  br i1 %111, label %112, label %116

112:                                              ; preds = %107, %102, %97
  %113 = load i8*, i8** %16, align 8
  %114 = load i8**, i8*** %13, align 8
  store i8* %113, i8** %114, align 8
  %115 = load i8**, i8*** %12, align 8
  store i8* null, i8** %115, align 8
  br label %120

116:                                              ; preds = %107
  %117 = load i8*, i8** @BREAK_ERR_MSG_INVALIDMETHOD, align 8
  %118 = load i8*, i8** %15, align 8
  %119 = call i32 @printf(i8* %117, i8* %118)
  store i32 128, i32* %17, align 4
  br label %120

120:                                              ; preds = %116, %112
  br label %145

121:                                              ; preds = %93
  %122 = load i8*, i8** %15, align 8
  %123 = load i8, i8* %122, align 1
  %124 = call i32 @ISUPPER(i8 signext %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %121
  %127 = load i8*, i8** %16, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  switch i32 %129, label %134 [
    i32 64, label %130
    i32 36, label %130
    i32 63, label %130
    i32 46, label %130
    i32 44, label %130
    i32 58, label %130
    i32 59, label %130
    i32 35, label %130
    i32 92, label %130
    i32 39, label %130
    i32 34, label %130
  ]

130:                                              ; preds = %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126
  %131 = load i8*, i8** @BREAK_ERR_MSG_INVALIDMETHOD, align 8
  %132 = load i8*, i8** %16, align 8
  %133 = call i32 @printf(i8* %131, i8* %132)
  store i32 128, i32* %17, align 4
  br label %139

134:                                              ; preds = %126
  %135 = load i8*, i8** %16, align 8
  %136 = load i8**, i8*** %13, align 8
  store i8* %135, i8** %136, align 8
  %137 = load i8*, i8** %15, align 8
  %138 = load i8**, i8*** %12, align 8
  store i8* %137, i8** %138, align 8
  br label %139

139:                                              ; preds = %134, %130
  br label %144

140:                                              ; preds = %121
  %141 = load i8*, i8** @BREAK_ERR_MSG_INVALIDCLASS, align 8
  %142 = load i8*, i8** %15, align 8
  %143 = call i32 @printf(i8* %141, i8* %142)
  store i32 128, i32* %17, align 4
  br label %144

144:                                              ; preds = %140, %139
  br label %145

145:                                              ; preds = %144, %120
  br label %148

146:                                              ; preds = %55
  br label %147

147:                                              ; preds = %55, %146
  br label %148

148:                                              ; preds = %147, %145, %92
  %149 = load i32, i32* %17, align 4
  store i32 %149, i32* %7, align 4
  br label %150

150:                                              ; preds = %148, %46, %26
  %151 = load i32, i32* %7, align 4
  ret i32 %151
}

declare dso_local i32 @puts(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @check_bptype(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @STRTOUL(i32, i8*) #1

declare dso_local i8* @mrb_debug_get_filename(i32*, %struct.TYPE_7__*, i64) #1

declare dso_local i32 @ISUPPER(i8 signext) #1

declare dso_local i32 @ISLOWER(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
