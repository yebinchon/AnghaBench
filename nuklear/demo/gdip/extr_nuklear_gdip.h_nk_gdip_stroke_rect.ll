; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdip_stroke_rect.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdip_stroke_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.nk_color = type { i32 }

@gdip = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, i16, i16, i16, i16, i16, i32)* @nk_gdip_stroke_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_gdip_stroke_rect(i16 signext %0, i16 signext %1, i16 zeroext %2, i16 zeroext %3, i16 zeroext %4, i16 zeroext %5, i32 %6) #0 {
  %8 = alloca %struct.nk_color, align 4
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  store i32 %6, i32* %16, align 4
  store i16 %0, i16* %9, align 2
  store i16 %1, i16* %10, align 2
  store i16 %2, i16* %11, align 2
  store i16 %3, i16* %12, align 2
  store i16 %4, i16* %13, align 2
  store i16 %5, i16* %14, align 2
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %18 = load i16, i16* %14, align 2
  %19 = zext i16 %18 to i32
  %20 = call i32 @GdipSetPenWidth(i32 %17, i32 %19)
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %22 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @convert_color(i32 %23)
  %25 = call i32 @GdipSetPenColor(i32 %21, i32 %24)
  %26 = load i16, i16* %13, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %7
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 1), align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %32 = load i16, i16* %9, align 2
  %33 = load i16, i16* %10, align 2
  %34 = load i16, i16* %11, align 2
  %35 = load i16, i16* %12, align 2
  %36 = call i32 @GdipDrawRectangleI(i32 %30, i32 %31, i16 signext %32, i16 signext %33, i16 zeroext %34, i16 zeroext %35)
  br label %202

37:                                               ; preds = %7
  %38 = load i16, i16* %13, align 2
  %39 = zext i16 %38 to i32
  %40 = mul nsw i32 2, %39
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %15, align 2
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 1), align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %44 = load i16, i16* %9, align 2
  %45 = load i16, i16* %10, align 2
  %46 = load i16, i16* %15, align 2
  %47 = load i16, i16* %15, align 2
  %48 = call i32 @GdipDrawArcI(i32 %42, i32 %43, i16 signext %44, i16 signext %45, i16 signext %46, i16 signext %47, i32 180, i32 90)
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 1), align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %51 = load i16, i16* %9, align 2
  %52 = sext i16 %51 to i32
  %53 = load i16, i16* %13, align 2
  %54 = zext i16 %53 to i32
  %55 = add nsw i32 %52, %54
  %56 = trunc i32 %55 to i16
  %57 = load i16, i16* %10, align 2
  %58 = load i16, i16* %9, align 2
  %59 = sext i16 %58 to i32
  %60 = load i16, i16* %11, align 2
  %61 = zext i16 %60 to i32
  %62 = add nsw i32 %59, %61
  %63 = load i16, i16* %13, align 2
  %64 = zext i16 %63 to i32
  %65 = sub nsw i32 %62, %64
  %66 = trunc i32 %65 to i16
  %67 = load i16, i16* %10, align 2
  %68 = call i32 @GdipDrawLineI(i32 %49, i32 %50, i16 signext %56, i16 signext %57, i16 signext %66, i16 signext %67)
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 1), align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %71 = load i16, i16* %9, align 2
  %72 = sext i16 %71 to i32
  %73 = load i16, i16* %11, align 2
  %74 = zext i16 %73 to i32
  %75 = add nsw i32 %72, %74
  %76 = load i16, i16* %15, align 2
  %77 = sext i16 %76 to i32
  %78 = sub nsw i32 %75, %77
  %79 = trunc i32 %78 to i16
  %80 = load i16, i16* %10, align 2
  %81 = load i16, i16* %15, align 2
  %82 = load i16, i16* %15, align 2
  %83 = call i32 @GdipDrawArcI(i32 %69, i32 %70, i16 signext %79, i16 signext %80, i16 signext %81, i16 signext %82, i32 270, i32 90)
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 1), align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %86 = load i16, i16* %9, align 2
  %87 = sext i16 %86 to i32
  %88 = load i16, i16* %11, align 2
  %89 = zext i16 %88 to i32
  %90 = add nsw i32 %87, %89
  %91 = trunc i32 %90 to i16
  %92 = load i16, i16* %10, align 2
  %93 = sext i16 %92 to i32
  %94 = load i16, i16* %13, align 2
  %95 = zext i16 %94 to i32
  %96 = add nsw i32 %93, %95
  %97 = trunc i32 %96 to i16
  %98 = load i16, i16* %9, align 2
  %99 = sext i16 %98 to i32
  %100 = load i16, i16* %11, align 2
  %101 = zext i16 %100 to i32
  %102 = add nsw i32 %99, %101
  %103 = trunc i32 %102 to i16
  %104 = load i16, i16* %10, align 2
  %105 = sext i16 %104 to i32
  %106 = load i16, i16* %12, align 2
  %107 = zext i16 %106 to i32
  %108 = add nsw i32 %105, %107
  %109 = load i16, i16* %13, align 2
  %110 = zext i16 %109 to i32
  %111 = sub nsw i32 %108, %110
  %112 = trunc i32 %111 to i16
  %113 = call i32 @GdipDrawLineI(i32 %84, i32 %85, i16 signext %91, i16 signext %97, i16 signext %103, i16 signext %112)
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 1), align 4
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %116 = load i16, i16* %9, align 2
  %117 = sext i16 %116 to i32
  %118 = load i16, i16* %11, align 2
  %119 = zext i16 %118 to i32
  %120 = add nsw i32 %117, %119
  %121 = load i16, i16* %15, align 2
  %122 = sext i16 %121 to i32
  %123 = sub nsw i32 %120, %122
  %124 = trunc i32 %123 to i16
  %125 = load i16, i16* %10, align 2
  %126 = sext i16 %125 to i32
  %127 = load i16, i16* %12, align 2
  %128 = zext i16 %127 to i32
  %129 = add nsw i32 %126, %128
  %130 = load i16, i16* %15, align 2
  %131 = sext i16 %130 to i32
  %132 = sub nsw i32 %129, %131
  %133 = trunc i32 %132 to i16
  %134 = load i16, i16* %15, align 2
  %135 = load i16, i16* %15, align 2
  %136 = call i32 @GdipDrawArcI(i32 %114, i32 %115, i16 signext %124, i16 signext %133, i16 signext %134, i16 signext %135, i32 0, i32 90)
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 1), align 4
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %139 = load i16, i16* %9, align 2
  %140 = load i16, i16* %10, align 2
  %141 = sext i16 %140 to i32
  %142 = load i16, i16* %13, align 2
  %143 = zext i16 %142 to i32
  %144 = add nsw i32 %141, %143
  %145 = trunc i32 %144 to i16
  %146 = load i16, i16* %9, align 2
  %147 = load i16, i16* %10, align 2
  %148 = sext i16 %147 to i32
  %149 = load i16, i16* %12, align 2
  %150 = zext i16 %149 to i32
  %151 = add nsw i32 %148, %150
  %152 = load i16, i16* %13, align 2
  %153 = zext i16 %152 to i32
  %154 = sub nsw i32 %151, %153
  %155 = trunc i32 %154 to i16
  %156 = call i32 @GdipDrawLineI(i32 %137, i32 %138, i16 signext %139, i16 signext %145, i16 signext %146, i16 signext %155)
  %157 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 1), align 4
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %159 = load i16, i16* %9, align 2
  %160 = load i16, i16* %10, align 2
  %161 = sext i16 %160 to i32
  %162 = load i16, i16* %12, align 2
  %163 = zext i16 %162 to i32
  %164 = add nsw i32 %161, %163
  %165 = load i16, i16* %15, align 2
  %166 = sext i16 %165 to i32
  %167 = sub nsw i32 %164, %166
  %168 = trunc i32 %167 to i16
  %169 = load i16, i16* %15, align 2
  %170 = load i16, i16* %15, align 2
  %171 = call i32 @GdipDrawArcI(i32 %157, i32 %158, i16 signext %159, i16 signext %168, i16 signext %169, i16 signext %170, i32 90, i32 90)
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 1), align 4
  %173 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %174 = load i16, i16* %9, align 2
  %175 = sext i16 %174 to i32
  %176 = load i16, i16* %13, align 2
  %177 = zext i16 %176 to i32
  %178 = add nsw i32 %175, %177
  %179 = trunc i32 %178 to i16
  %180 = load i16, i16* %10, align 2
  %181 = sext i16 %180 to i32
  %182 = load i16, i16* %12, align 2
  %183 = zext i16 %182 to i32
  %184 = add nsw i32 %181, %183
  %185 = trunc i32 %184 to i16
  %186 = load i16, i16* %9, align 2
  %187 = sext i16 %186 to i32
  %188 = load i16, i16* %11, align 2
  %189 = zext i16 %188 to i32
  %190 = add nsw i32 %187, %189
  %191 = load i16, i16* %13, align 2
  %192 = zext i16 %191 to i32
  %193 = sub nsw i32 %190, %192
  %194 = trunc i32 %193 to i16
  %195 = load i16, i16* %10, align 2
  %196 = sext i16 %195 to i32
  %197 = load i16, i16* %12, align 2
  %198 = zext i16 %197 to i32
  %199 = add nsw i32 %196, %198
  %200 = trunc i32 %199 to i16
  %201 = call i32 @GdipDrawLineI(i32 %172, i32 %173, i16 signext %179, i16 signext %185, i16 signext %194, i16 signext %200)
  br label %202

202:                                              ; preds = %37, %29
  ret void
}

declare dso_local i32 @GdipSetPenWidth(i32, i32) #1

declare dso_local i32 @GdipSetPenColor(i32, i32) #1

declare dso_local i32 @convert_color(i32) #1

declare dso_local i32 @GdipDrawRectangleI(i32, i32, i16 signext, i16 signext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @GdipDrawArcI(i32, i32, i16 signext, i16 signext, i16 signext, i16 signext, i32, i32) #1

declare dso_local i32 @GdipDrawLineI(i32, i32, i16 signext, i16 signext, i16 signext, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
