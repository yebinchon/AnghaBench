; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_mixer.c_cp_fields.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_mixer.c_cp_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 (i32*, i32*, i32, i32, i32, i32, i32)*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"Unable to remap channels: device=%u, buffer=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*, i32*, i32, i32, i32, i32, i32)* @cp_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_fields(%struct.TYPE_8__* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %17, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 8
  store i32 %28, i32* %18, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 8
  store i32 %34, i32* %19, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %39, %44
  br i1 %45, label %88, label %46

46:                                               ; preds = %8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 6
  br i1 %59, label %88, label %60

60:                                               ; preds = %53, %46
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 8
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %88, label %74

74:                                               ; preds = %67, %60
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 6
  br i1 %80, label %81, label %132

81:                                               ; preds = %74
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %132

88:                                               ; preds = %81, %67, %53, %8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32 (i32*, i32*, i32, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32, i32)** %90, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %16, align 4
  %99 = call i32 %91(i32* %92, i32* %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %113, label %106

106:                                              ; preds = %88
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 2
  br i1 %112, label %113, label %131

113:                                              ; preds = %106, %88
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i32 (i32*, i32*, i32, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32, i32)** %115, align 8
  %117 = load i32*, i32** %10, align 8
  %118 = load i32, i32* %18, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32*, i32** %11, align 8
  %122 = load i32, i32* %19, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %16, align 4
  %130 = call i32 %116(i32* %120, i32* %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %113, %106
  br label %210

132:                                              ; preds = %81, %74
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %158

139:                                              ; preds = %132
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 2
  br i1 %145, label %146, label %158

146:                                              ; preds = %139
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i32 (i32*, i32*, i32, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32, i32)** %148, align 8
  %150 = load i32*, i32** %10, align 8
  %151 = load i32*, i32** %11, align 8
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* %16, align 4
  %157 = call i32 %149(i32* %150, i32* %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156)
  br label %210

158:                                              ; preds = %139, %132
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 2
  br i1 %164, label %165, label %198

165:                                              ; preds = %158
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %198

172:                                              ; preds = %165
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  %175 = load i32 (i32*, i32*, i32, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32, i32)** %174, align 8
  %176 = load i32*, i32** %10, align 8
  %177 = load i32*, i32** %11, align 8
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* %16, align 4
  %183 = call i32 %175(i32* %176, i32* %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182)
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 1
  %186 = load i32 (i32*, i32*, i32, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32, i32)** %185, align 8
  %187 = load i32*, i32** %10, align 8
  %188 = load i32*, i32** %11, align 8
  %189 = load i32, i32* %19, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* %13, align 4
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* %15, align 4
  %196 = load i32, i32* %16, align 4
  %197 = call i32 %186(i32* %187, i32* %191, i32 %192, i32 %193, i32 %194, i32 %195, i32 %196)
  br label %210

198:                                              ; preds = %165, %158
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @WARN(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %203, i32 %208)
  br label %210

210:                                              ; preds = %198, %172, %146, %131
  ret void
}

declare dso_local i32 @WARN(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
