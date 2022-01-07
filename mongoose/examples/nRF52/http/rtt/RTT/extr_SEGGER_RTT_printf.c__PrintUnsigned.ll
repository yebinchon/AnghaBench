; ModuleID = '/home/carl/AnghaBench/mongoose/examples/nRF52/http/rtt/RTT/extr_SEGGER_RTT_printf.c__PrintUnsigned.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/nRF52/http/rtt/RTT/extr_SEGGER_RTT_printf.c__PrintUnsigned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@_PrintUnsigned._aV2C = internal constant [16 x i8] c"0123456789ABCDEF", align 16
@FORMAT_FLAG_LEFT_JUSTIFY = common dso_local global i32 0, align 4
@FORMAT_FLAG_PAD_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32, i32, i32, i32)* @_PrintUnsigned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_PrintUnsigned(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 1, i32* %14, align 4
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %19

19:                                               ; preds = %23, %6
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %9, align 4
  %26 = udiv i32 %24, %25
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %16, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %16, align 4
  br label %19

29:                                               ; preds = %19
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %16, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @FORMAT_FLAG_LEFT_JUSTIFY, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %77

40:                                               ; preds = %35
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %76

43:                                               ; preds = %40
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @FORMAT_FLAG_PAD_ZERO, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @FORMAT_FLAG_PAD_ZERO, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i8 48, i8* %17, align 1
  br label %54

53:                                               ; preds = %49, %43
  store i8 32, i8* %17, align 1
  br label %54

54:                                               ; preds = %53, %52
  br label %55

55:                                               ; preds = %74, %54
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add i32 %60, -1
  store i32 %61, i32* %11, align 4
  %62 = icmp ult i32 %59, %60
  br label %63

63:                                               ; preds = %58, %55
  %64 = phi i1 [ false, %55 ], [ %62, %58 ]
  br i1 %64, label %65, label %75

65:                                               ; preds = %63
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %67 = load i8, i8* %17, align 1
  %68 = call i32 @_StoreChar(%struct.TYPE_4__* %66, i8 signext %67)
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %154

74:                                               ; preds = %65
  br label %55

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75, %40
  br label %77

77:                                               ; preds = %76, %35
  br label %78

78:                                               ; preds = %91, %77
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %14, align 4
  %81 = udiv i32 %79, %80
  %82 = load i32, i32* %9, align 4
  %83 = icmp uge i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %10, align 4
  %87 = icmp sgt i32 %85, 1
  %88 = zext i1 %87 to i32
  %89 = or i32 %84, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %78
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %14, align 4
  %94 = mul i32 %93, %92
  store i32 %94, i32* %14, align 4
  br label %78

95:                                               ; preds = %78
  br label %96

96:                                               ; preds = %120, %95
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %14, align 4
  %99 = udiv i32 %97, %98
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %14, align 4
  %102 = mul i32 %100, %101
  %103 = load i32, i32* %8, align 4
  %104 = sub i32 %103, %102
  store i32 %104, i32* %8, align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %106 = load i32, i32* %13, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [16 x i8], [16 x i8]* @_PrintUnsigned._aV2C, i64 0, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = call i32 @_StoreChar(%struct.TYPE_4__* %105, i8 signext %109)
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %96
  br label %123

116:                                              ; preds = %96
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %14, align 4
  %119 = udiv i32 %118, %117
  store i32 %119, i32* %14, align 4
  br label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %96, label %123

123:                                              ; preds = %120, %115
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @FORMAT_FLAG_LEFT_JUSTIFY, align 4
  %126 = and i32 %124, %125
  %127 = load i32, i32* @FORMAT_FLAG_LEFT_JUSTIFY, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %154

129:                                              ; preds = %123
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %153

132:                                              ; preds = %129
  br label %133

133:                                              ; preds = %151, %132
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %11, align 4
  %139 = add i32 %138, -1
  store i32 %139, i32* %11, align 4
  %140 = icmp ult i32 %137, %138
  br label %141

141:                                              ; preds = %136, %133
  %142 = phi i1 [ false, %133 ], [ %140, %136 ]
  br i1 %142, label %143, label %152

143:                                              ; preds = %141
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %145 = call i32 @_StoreChar(%struct.TYPE_4__* %144, i8 signext 32)
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp slt i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  br label %154

151:                                              ; preds = %143
  br label %133

152:                                              ; preds = %141
  br label %153

153:                                              ; preds = %152, %129
  br label %154

154:                                              ; preds = %73, %150, %153, %123
  ret void
}

declare dso_local i32 @_StoreChar(%struct.TYPE_4__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
