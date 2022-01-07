; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_orders.c_process_triblt.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_orders.c_process_triblt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [74 x i8] c"TRIBLT(op=0x%x,x=%d,y=%d,cx=%d,cy=%d,id=%d,idx=%d,bs=%d,bg=0x%x,fg=0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_5__*, i32, i32)* @process_triblt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_triblt(i32 %0, %struct.TYPE_5__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 11
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @in_uint8(i32 %15, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 13
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @in_uint8(i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %14, %4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 2
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 7
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @rdp_in_coord(i32 %30, i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %25
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 6
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @rdp_in_coord(i32 %40, i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %35
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 5
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @rdp_in_coord(i32 %50, i32* %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %45
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, 16
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @rdp_in_coord(i32 %60, i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %55
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, 32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @in_uint8(i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %69, %65
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, 64
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @rdp_in_coord(i32 %80, i32* %82, i32 %83)
  br label %85

85:                                               ; preds = %79, %75
  %86 = load i32, i32* %7, align 4
  %87 = and i32 %86, 128
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @rdp_in_coord(i32 %90, i32* %92, i32 %93)
  br label %95

95:                                               ; preds = %89, %85
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, 256
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = call i32 @rdp_in_colour(i32 %100, i32* %102)
  br label %104

104:                                              ; preds = %99, %95
  %105 = load i32, i32* %7, align 4
  %106 = and i32 %105, 512
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = call i32 @rdp_in_colour(i32 %109, i32* %111)
  br label %113

113:                                              ; preds = %108, %104
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 9
  %117 = load i32, i32* %7, align 4
  %118 = ashr i32 %117, 10
  %119 = call i32 @rdp_parse_brush(i32 %114, %struct.TYPE_6__* %116, i32 %118)
  %120 = load i32, i32* %7, align 4
  %121 = and i32 %120, 32768
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %113
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 10
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @in_uint16_le(i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %123, %113
  %130 = load i32, i32* %7, align 4
  %131 = and i32 %130, 65536
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load i32, i32* %5, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 12
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @in_uint16_le(i32 %134, i32 %137)
  br label %139

139:                                              ; preds = %133, %129
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 11
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 10
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 9
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = inttoptr i64 %171 to i8*
  %173 = call i32 @DEBUG(i8* %172)
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 11
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 10
  %179 = load i32, i32* %178, align 4
  %180 = call i32* @cache_get_bitmap(i32 %176, i32 %179)
  store i32* %180, i32** %9, align 8
  %181 = load i32*, i32** %9, align 8
  %182 = icmp eq i32* %181, null
  br i1 %182, label %183, label %184

183:                                              ; preds = %139
  br label %217

184:                                              ; preds = %139
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 9
  %187 = call i32 @setup_brush(i32* %10, %struct.TYPE_6__* %186)
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 8
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 7
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** %9, align 8
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @ui_triblt(i32 %190, i32 %193, i32 %196, i32 %199, i32 %202, i32* %203, i32 %206, i32 %209, i32* %10, i32 %212, i32 %215)
  br label %217

217:                                              ; preds = %184, %183
  ret void
}

declare dso_local i32 @in_uint8(i32, i32) #1

declare dso_local i32 @rdp_in_coord(i32, i32*, i32) #1

declare dso_local i32 @rdp_in_colour(i32, i32*) #1

declare dso_local i32 @rdp_parse_brush(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @in_uint16_le(i32, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32* @cache_get_bitmap(i32, i32) #1

declare dso_local i32 @setup_brush(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @ui_triblt(i32, i32, i32, i32, i32, i32*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
