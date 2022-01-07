; ModuleID = '/home/carl/AnghaBench/mongoose/examples/nRF52/http/rtt/RTT/extr_SEGGER_RTT_printf.c__PrintInt.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/nRF52/http/rtt/RTT/extr_SEGGER_RTT_printf.c__PrintInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@FORMAT_FLAG_PRINT_SIGN = common dso_local global i32 0, align 4
@FORMAT_FLAG_PAD_ZERO = common dso_local global i32 0, align 4
@FORMAT_FLAG_LEFT_JUSTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32, i32, i32, i32)* @_PrintInt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_PrintInt(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = load i32, i32* %8, align 4
  %19 = sub nsw i32 0, %18
  br label %22

20:                                               ; preds = %6
  %21 = load i32, i32* %8, align 4
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %19, %17 ], [ %21, %20 ]
  store i32 %23, i32* %14, align 4
  store i32 1, i32* %13, align 4
  br label %24

24:                                               ; preds = %28, %22
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp uge i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %9, align 4
  %31 = udiv i32 %29, %30
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %13, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %13, align 4
  br label %24

34:                                               ; preds = %24
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32, i32* %11, align 4
  %42 = icmp ugt i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @FORMAT_FLAG_PRINT_SIGN, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @FORMAT_FLAG_PRINT_SIGN, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %43
  %53 = load i32, i32* %11, align 4
  %54 = add i32 %53, -1
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %52, %46, %40
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @FORMAT_FLAG_PAD_ZERO, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %93

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @FORMAT_FLAG_LEFT_JUSTIFY, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %63
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %68
  br label %72

72:                                               ; preds = %90, %71
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %11, align 4
  %78 = add i32 %77, -1
  store i32 %78, i32* %11, align 4
  %79 = icmp ult i32 %76, %77
  br label %80

80:                                               ; preds = %75, %72
  %81 = phi i1 [ false, %72 ], [ %79, %75 ]
  br i1 %81, label %82, label %91

82:                                               ; preds = %80
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %84 = call i32 @_StoreChar(%struct.TYPE_5__* %83, i8 signext 32)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %170

90:                                               ; preds = %82
  br label %72

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %91, %68
  br label %93

93:                                               ; preds = %92, %63, %60
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %8, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %100 = call i32 @_StoreChar(%struct.TYPE_5__* %99, i8 signext 45)
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  br label %170

106:                                              ; preds = %96
  br label %123

107:                                              ; preds = %93
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @FORMAT_FLAG_PRINT_SIGN, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* @FORMAT_FLAG_PRINT_SIGN, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %107
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %115 = call i32 @_StoreChar(%struct.TYPE_5__* %114, i8 signext 43)
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %170

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %121, %107
  br label %123

123:                                              ; preds = %122, %106
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @FORMAT_FLAG_PAD_ZERO, align 4
  %126 = and i32 %124, %125
  %127 = load i32, i32* @FORMAT_FLAG_PAD_ZERO, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %162

129:                                              ; preds = %123
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* @FORMAT_FLAG_LEFT_JUSTIFY, align 4
  %132 = and i32 %130, %131
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %162

134:                                              ; preds = %129
  %135 = load i32, i32* %10, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %162

137:                                              ; preds = %134
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %161

140:                                              ; preds = %137
  br label %141

141:                                              ; preds = %159, %140
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %11, align 4
  %147 = add i32 %146, -1
  store i32 %147, i32* %11, align 4
  %148 = icmp ult i32 %145, %146
  br label %149

149:                                              ; preds = %144, %141
  %150 = phi i1 [ false, %141 ], [ %148, %144 ]
  br i1 %150, label %151, label %160

151:                                              ; preds = %149
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %153 = call i32 @_StoreChar(%struct.TYPE_5__* %152, i8 signext 48)
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %170

159:                                              ; preds = %151
  br label %141

160:                                              ; preds = %149
  br label %161

161:                                              ; preds = %160, %137
  br label %162

162:                                              ; preds = %161, %134, %129, %123
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @_PrintUnsigned(%struct.TYPE_5__* %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %162, %158, %120, %105, %89
  ret void
}

declare dso_local i32 @_StoreChar(%struct.TYPE_5__*, i8 signext) #1

declare dso_local i32 @_PrintUnsigned(%struct.TYPE_5__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
