; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_sws.c_nn_utf8_code_point.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_sws.c_nn_utf8_code_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NN_SWS_UTF8_FRAGMENT = common dso_local global i32 0, align 4
@NN_SWS_UTF8_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @nn_utf8_code_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_utf8_code_point(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @NN_SWS_UTF8_FRAGMENT, align 4
  store i32 %12, i32* %3, align 4
  br label %173

13:                                               ; preds = %8
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sle i32 %16, 127
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %173

19:                                               ; preds = %13
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 194
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @NN_SWS_UTF8_INVALID, align 4
  store i32 %25, i32* %3, align 4
  br label %173

26:                                               ; preds = %19
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sle i32 %29, 223
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load i64, i64* %5, align 8
  %33 = icmp ult i64 %32, 2
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @NN_SWS_UTF8_FRAGMENT, align 4
  store i32 %35, i32* %3, align 4
  br label %173

36:                                               ; preds = %31
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 192
  %41 = icmp ne i32 %40, 128
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @NN_SWS_UTF8_INVALID, align 4
  store i32 %43, i32* %3, align 4
  br label %173

44:                                               ; preds = %36
  store i32 2, i32* %3, align 4
  br label %173

45:                                               ; preds = %26
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sle i32 %48, 239
  br i1 %49, label %50, label %104

50:                                               ; preds = %45
  %51 = load i64, i64* %5, align 8
  %52 = icmp ult i64 %51, 2
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @NN_SWS_UTF8_FRAGMENT, align 4
  store i32 %54, i32* %3, align 4
  br label %173

55:                                               ; preds = %50
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 224
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %63, 160
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 128
  br i1 %69, label %70, label %72

70:                                               ; preds = %65, %60
  %71 = load i32, i32* @NN_SWS_UTF8_INVALID, align 4
  store i32 %71, i32* %3, align 4
  br label %173

72:                                               ; preds = %65, %55
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 237
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i32*, i32** %4, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp sge i32 %80, 160
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @NN_SWS_UTF8_INVALID, align 4
  store i32 %83, i32* %3, align 4
  br label %173

84:                                               ; preds = %77, %72
  %85 = load i64, i64* %5, align 8
  %86 = icmp ult i64 %85, 3
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* @NN_SWS_UTF8_FRAGMENT, align 4
  store i32 %88, i32* %3, align 4
  br label %173

89:                                               ; preds = %84
  %90 = load i32*, i32** %4, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 192
  %94 = icmp ne i32 %93, 128
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load i32*, i32** %4, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 192
  %100 = icmp ne i32 %99, 128
  br i1 %100, label %101, label %103

101:                                              ; preds = %95, %89
  %102 = load i32, i32* @NN_SWS_UTF8_INVALID, align 4
  store i32 %102, i32* %3, align 4
  br label %173

103:                                              ; preds = %95
  store i32 3, i32* %3, align 4
  br label %173

104:                                              ; preds = %45
  %105 = load i32*, i32** %4, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp sle i32 %107, 244
  br i1 %108, label %109, label %164

109:                                              ; preds = %104
  %110 = load i64, i64* %5, align 8
  %111 = icmp ult i64 %110, 2
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i32, i32* @NN_SWS_UTF8_FRAGMENT, align 4
  store i32 %113, i32* %3, align 4
  br label %173

114:                                              ; preds = %109
  %115 = load i32*, i32** %4, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 240
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load i32*, i32** %4, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %122, 144
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i32, i32* @NN_SWS_UTF8_INVALID, align 4
  store i32 %125, i32* %3, align 4
  br label %173

126:                                              ; preds = %119, %114
  %127 = load i32*, i32** %4, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 244
  br i1 %130, label %131, label %138

131:                                              ; preds = %126
  %132 = load i32*, i32** %4, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp sge i32 %134, 144
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load i32, i32* @NN_SWS_UTF8_INVALID, align 4
  store i32 %137, i32* %3, align 4
  br label %173

138:                                              ; preds = %131, %126
  %139 = load i64, i64* %5, align 8
  %140 = icmp ult i64 %139, 4
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = load i32, i32* @NN_SWS_UTF8_FRAGMENT, align 4
  store i32 %142, i32* %3, align 4
  br label %173

143:                                              ; preds = %138
  %144 = load i32*, i32** %4, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 192
  %148 = icmp ne i32 %147, 128
  br i1 %148, label %161, label %149

149:                                              ; preds = %143
  %150 = load i32*, i32** %4, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 192
  %154 = icmp ne i32 %153, 128
  br i1 %154, label %161, label %155

155:                                              ; preds = %149
  %156 = load i32*, i32** %4, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 3
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 192
  %160 = icmp ne i32 %159, 128
  br i1 %160, label %161, label %163

161:                                              ; preds = %155, %149, %143
  %162 = load i32, i32* @NN_SWS_UTF8_INVALID, align 4
  store i32 %162, i32* %3, align 4
  br label %173

163:                                              ; preds = %155
  store i32 4, i32* %3, align 4
  br label %173

164:                                              ; preds = %104
  %165 = load i32*, i32** %4, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp sge i32 %167, 245
  br i1 %168, label %169, label %171

169:                                              ; preds = %164
  %170 = load i32, i32* @NN_SWS_UTF8_INVALID, align 4
  store i32 %170, i32* %3, align 4
  br label %173

171:                                              ; preds = %164
  %172 = call i32 @nn_assert(i32 0)
  br label %173

173:                                              ; preds = %171, %169, %163, %161, %141, %136, %124, %112, %103, %101, %87, %82, %70, %53, %44, %42, %34, %24, %18, %11
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @nn_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
