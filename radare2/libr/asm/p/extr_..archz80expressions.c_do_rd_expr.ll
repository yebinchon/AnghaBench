; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archz80expressions.c_do_rd_expr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archz80expressions.c_do_rd_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@verbose = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"%5d (0x%04x): Starting to read expression (string=%s, delimiter=%c).\0A\00", align 1
@stack = common dso_local global %struct.TYPE_2__* null, align 8
@sp = common dso_local global i64 0, align 8
@addr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"expression expected (not %s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"junk at end of expression: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"%5d (0x%04x): rd_expr returned %d (%04x).\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"%5d (0x%04x): Returning invalid result.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8, i32*, i32, i32*, i32)* @do_rd_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_rd_expr(i8** %0, i8 signext %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8** %0, i8*** %8, align 8
  store i8 %1, i8* %9, align 1
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @verbose, align 4
  %16 = icmp sge i32 %15, 6
  br i1 %16, label %17, label %37

17:                                               ; preds = %6
  %18 = load i32, i32* @stderr, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack, align 8
  %20 = load i64, i64* @sp, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @addr, align 4
  %25 = load i8**, i8*** %8, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8, i8* %9, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load i8, i8* %9, align 1
  %32 = sext i8 %31 to i32
  br label %34

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i32 [ %32, %30 ], [ 32, %33 ]
  %36 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i8* %26, i32 %35)
  br label %37

37:                                               ; preds = %34, %6
  %38 = load i8**, i8*** %8, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @delspc(i8* %39)
  %41 = load i8**, i8*** %8, align 8
  store i8* %40, i8** %41, align 8
  %42 = load i8**, i8*** %8, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load i8**, i8*** %8, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8, i8* %9, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %46, %37
  %55 = load i32*, i32** %10, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32*, i32** %10, align 8
  store i32 0, i32* %58, align 4
  br label %67

59:                                               ; preds = %54
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i8**, i8*** %8, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @printerr(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %62, %59
  br label %67

67:                                               ; preds = %66, %57
  store i32 0, i32* %7, align 4
  br label %202

68:                                               ; preds = %46
  %69 = load i8**, i8*** %8, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32*, i32** %12, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @rd_expr_or(i8** %69, i32* %70, i32 %71, i32* %72, i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load i8**, i8*** %8, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = call i8* @delspc(i8* %76)
  %78 = load i8**, i8*** %8, align 8
  store i8* %77, i8** %78, align 8
  %79 = load i8**, i8*** %8, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 63
  br i1 %83, label %84, label %138

84:                                               ; preds = %68
  %85 = load i32*, i32** %12, align 8
  store i32 0, i32* %85, align 4
  %86 = load i8**, i8*** %8, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %86, align 8
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %114

91:                                               ; preds = %84
  %92 = load i8**, i8*** %8, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @do_rd_expr(i8** %92, i8 signext 58, i32* %93, i32 %94, i32* %95, i32 %96)
  store i32 %97, i32* %14, align 4
  %98 = load i8**, i8*** %8, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = load i8, i8* %99, align 1
  %101 = icmp ne i8 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %91
  %103 = load i8**, i8*** %8, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %103, align 8
  br label %106

106:                                              ; preds = %102, %91
  %107 = load i8**, i8*** %8, align 8
  %108 = load i8, i8* %9, align 1
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %11, align 4
  %111 = load i32*, i32** %12, align 8
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @do_rd_expr(i8** %107, i8 signext %108, i32* %109, i32 %110, i32* %111, i32 %112)
  br label %137

114:                                              ; preds = %84
  %115 = load i8**, i8*** %8, align 8
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load i32*, i32** %12, align 8
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @do_rd_expr(i8** %115, i8 signext 58, i32* %116, i32 %117, i32* %118, i32 %119)
  %121 = load i8**, i8*** %8, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = load i8, i8* %122, align 1
  %124 = icmp ne i8 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %114
  %126 = load i8**, i8*** %8, align 8
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %126, align 8
  br label %129

129:                                              ; preds = %125, %114
  %130 = load i8**, i8*** %8, align 8
  %131 = load i8, i8* %9, align 1
  %132 = load i32*, i32** %10, align 8
  %133 = load i32, i32* %11, align 4
  %134 = load i32*, i32** %12, align 8
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @do_rd_expr(i8** %130, i8 signext %131, i32* %132, i32 %133, i32* %134, i32 %135)
  store i32 %136, i32* %14, align 4
  br label %137

137:                                              ; preds = %129, %106
  br label %138

138:                                              ; preds = %137, %68
  %139 = load i8**, i8*** %8, align 8
  %140 = load i8*, i8** %139, align 8
  %141 = call i8* @delspc(i8* %140)
  %142 = load i8**, i8*** %8, align 8
  store i8* %141, i8** %142, align 8
  %143 = load i8**, i8*** %8, align 8
  %144 = load i8*, i8** %143, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %170

148:                                              ; preds = %138
  %149 = load i8**, i8*** %8, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = load i8, i8* %9, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp ne i32 %152, %154
  br i1 %155, label %156, label %170

156:                                              ; preds = %148
  %157 = load i32*, i32** %10, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = load i32*, i32** %10, align 8
  store i32 0, i32* %160, align 4
  br label %169

161:                                              ; preds = %156
  %162 = load i32, i32* %13, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load i8**, i8*** %8, align 8
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @printerr(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %166)
  br label %168

168:                                              ; preds = %164, %161
  br label %169

169:                                              ; preds = %168, %159
  br label %170

170:                                              ; preds = %169, %148, %138
  %171 = load i32, i32* @verbose, align 4
  %172 = icmp sge i32 %171, 7
  br i1 %172, label %173, label %200

173:                                              ; preds = %170
  %174 = load i32, i32* @stderr, align 4
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack, align 8
  %176 = load i64, i64* @sp, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @addr, align 4
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* %14, align 4
  %183 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %174, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %179, i32 %180, i32 %181, i32 %182)
  %184 = load i32*, i32** %10, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %199

186:                                              ; preds = %173
  %187 = load i32*, i32** %10, align 8
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %199, label %190

190:                                              ; preds = %186
  %191 = load i32, i32* @stderr, align 4
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack, align 8
  %193 = load i64, i64* @sp, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @addr, align 4
  %198 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %191, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %190, %186, %173
  br label %200

200:                                              ; preds = %199, %170
  %201 = load i32, i32* %14, align 4
  store i32 %201, i32* %7, align 4
  br label %202

202:                                              ; preds = %200, %67
  %203 = load i32, i32* %7, align 4
  ret i32 %203
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i8* @delspc(i8*) #1

declare dso_local i32 @printerr(i32, i8*, i8*) #1

declare dso_local i32 @rd_expr_or(i8**, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
