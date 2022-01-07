; ModuleID = '/home/carl/AnghaBench/micropython/lib/oofatfs/extr_ff.c_create_name.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/oofatfs/extr_ff.c_create_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }

@FR_INVALID_NAME = common dso_local global i32 0, align 4
@ExCvt = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [15 x i8] c"\22*+,:;<=>?[]|\7F\00", align 1
@DDEM = common dso_local global i32 0, align 4
@RDDEM = common dso_local global i8* null, align 8
@NS_LAST = common dso_local global i32 0, align 4
@NSFLAG = common dso_local global i64 0, align 8
@FR_OK = common dso_local global i32 0, align 4
@CODEPAGE = common dso_local global i32 0, align 4
@FF_MAX_LFN = common dso_local global i32 0, align 4
@NS_BODY = common dso_local global i32 0, align 4
@NS_DOT = common dso_local global i32 0, align 4
@NS_EXT = common dso_local global i32 0, align 4
@NS_LFN = common dso_local global i32 0, align 4
@NS_LOSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8**)* @create_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_name(%struct.TYPE_7__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %12, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @mem_set(i32* %19, i8 signext 32, i32 11)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 8, i32* %9, align 4
  br label %21

21:                                               ; preds = %146, %76, %2
  %22 = load i8*, i8** %12, align 8
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %10, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp sle i32 %29, 32
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %147

32:                                               ; preds = %21
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 47
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 92
  br i1 %37, label %38, label %61

38:                                               ; preds = %35, %32
  br label %39

39:                                               ; preds = %57, %38
  %40 = load i8*, i8** %12, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 47
  br i1 %46, label %55, label %47

47:                                               ; preds = %39
  %48 = load i8*, i8** %12, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 92
  br label %55

55:                                               ; preds = %47, %39
  %56 = phi i1 [ true, %39 ], [ %54, %47 ]
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %39

60:                                               ; preds = %55
  br label %147

61:                                               ; preds = %35
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 46
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64, %61
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 11
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 46
  br i1 %73, label %74, label %76

74:                                               ; preds = %71, %68
  %75 = load i32, i32* @FR_INVALID_NAME, align 4
  store i32 %75, i32* %3, align 4
  br label %180

76:                                               ; preds = %71
  store i32 8, i32* %11, align 4
  store i32 11, i32* %9, align 4
  br label %21

77:                                               ; preds = %64
  %78 = load i8**, i8*** @ExCvt, align 8
  %79 = icmp ne i8** %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  %82 = icmp sge i32 %81, 128
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load i8**, i8*** @ExCvt, align 8
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, 127
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %84, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = ptrtoint i8* %89 to i32
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %83, %80, %77
  %92 = load i32, i32* %6, align 4
  %93 = call i64 @dbc_1st(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %126

95:                                               ; preds = %91
  %96 = load i8*, i8** %12, align 8
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %96, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @dbc_2nd(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %95
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %9, align 4
  %109 = sub nsw i32 %108, 1
  %110 = icmp sge i32 %107, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %106, %95
  %112 = load i32, i32* @FR_INVALID_NAME, align 4
  store i32 %112, i32* %3, align 4
  br label %180

113:                                              ; preds = %106
  %114 = load i32, i32* %6, align 4
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  store i32 %114, i32* %119, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  store i32 %120, i32* %125, align 4
  br label %146

126:                                              ; preds = %91
  %127 = load i32, i32* %6, align 4
  %128 = call i64 @chk_chr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i32, i32* @FR_INVALID_NAME, align 4
  store i32 %131, i32* %3, align 4
  br label %180

132:                                              ; preds = %126
  %133 = load i32, i32* %6, align 4
  %134 = call i64 @IsLower(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i32, i32* %6, align 4
  %138 = sub nsw i32 %137, 32
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %136, %132
  %140 = load i32, i32* %6, align 4
  %141 = load i32*, i32** %8, align 8
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %11, align 4
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  store i32 %140, i32* %145, align 4
  br label %146

146:                                              ; preds = %139, %113
  br label %21

147:                                              ; preds = %60, %31
  %148 = load i8*, i8** %12, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = load i8**, i8*** %5, align 8
  store i8* %151, i8** %152, align 8
  %153 = load i32, i32* %11, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %147
  %156 = load i32, i32* @FR_INVALID_NAME, align 4
  store i32 %156, i32* %3, align 4
  br label %180

157:                                              ; preds = %147
  %158 = load i32*, i32** %8, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @DDEM, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %157
  %164 = load i8*, i8** @RDDEM, align 8
  %165 = ptrtoint i8* %164 to i32
  %166 = load i32*, i32** %8, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %163, %157
  %169 = load i32, i32* %6, align 4
  %170 = icmp sle i32 %169, 32
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  %172 = load i32, i32* @NS_LAST, align 4
  br label %174

173:                                              ; preds = %168
  br label %174

174:                                              ; preds = %173, %171
  %175 = phi i32 [ %172, %171 ], [ 0, %173 ]
  %176 = load i32*, i32** %8, align 8
  %177 = load i64, i64* @NSFLAG, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  store i32 %175, i32* %178, align 4
  %179 = load i32, i32* @FR_OK, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %174, %155, %130, %111, %74
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @mem_set(i32*, i8 signext, i32) #1

declare dso_local i64 @dbc_1st(i32) #1

declare dso_local i32 @dbc_2nd(i32) #1

declare dso_local i64 @chk_chr(i8*, i32) #1

declare dso_local i64 @IsLower(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
