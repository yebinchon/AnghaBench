; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_rtti_itanium.c_rtti_itanium_read_vmi_class_type_info.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_rtti_itanium.c_rtti_itanium_read_vmi_class_type_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_17__*, i32 (%struct.TYPE_17__*, i64, i64*)* }
%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 (i32, i64, i32*, i32)* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__*, i64, i32, i64, i64 }
%struct.TYPE_13__ = type { i64, i64 }

@UT64_MAX = common dso_local global i64 0, align 8
@NAME_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error reading vmi_base_count\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i64, %struct.TYPE_15__*)* @rtti_itanium_read_vmi_class_type_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtti_itanium_read_vmi_class_type_info(%struct.TYPE_16__* %0, i64 %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @UT64_MAX, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %214

19:                                               ; preds = %3
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 2
  %22 = load i32 (%struct.TYPE_17__*, i64, i64*)*, i32 (%struct.TYPE_17__*, i64, i64*)** %21, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 %22(%struct.TYPE_17__* %25, i64 %26, i64* %8)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %214

30:                                               ; preds = %19
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 5
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %6, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  %41 = load i32 (%struct.TYPE_17__*, i64, i64*)*, i32 (%struct.TYPE_17__*, i64, i64*)** %40, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 %41(%struct.TYPE_17__* %44, i64 %45, i64* %8)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %214

49:                                               ; preds = %30
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 4
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* @NAME_BUF_SIZE, align 4
  %54 = zext i32 %53 to i64
  %55 = call i8* @llvm.stacksave()
  store i8* %55, i8** %9, align 8
  %56 = alloca i32, i64 %54, align 16
  store i64 %54, i64* %10, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i32 (i32, i64, i32*, i32)*, i32 (i32, i64, i32*, i32)** %61, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = mul nuw i64 4, %54
  %71 = trunc i64 %70 to i32
  %72 = call i32 %62(i32 %68, i64 %69, i32* %56, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %212

75:                                               ; preds = %49
  %76 = bitcast i32* %56 to i8*
  %77 = call i32 @r_str_len_utf8(i8* %76)
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @malloc(i64 %80)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %212

89:                                               ; preds = %75
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i64, i64* %12, align 8
  %94 = call i32 @memcpy(i32 %92, i32* %56, i64 %93)
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %6, align 8
  %99 = add nsw i64 %98, %97
  store i64 %99, i64* %6, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 2
  %102 = load i32 (%struct.TYPE_17__*, i64, i64*)*, i32 (%struct.TYPE_17__*, i64, i64*)** %101, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %104, align 8
  %106 = load i64, i64* %6, align 8
  %107 = call i32 %102(%struct.TYPE_17__* %105, i64 %106, i64* %8)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %89
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %212

110:                                              ; preds = %89
  %111 = load i64, i64* %8, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 2
  store i64 %111, i64* %113, align 8
  %114 = load i64, i64* %6, align 8
  %115 = add nsw i64 %114, 4
  store i64 %115, i64* %6, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 2
  %118 = load i32 (%struct.TYPE_17__*, i64, i64*)*, i32 (%struct.TYPE_17__*, i64, i64*)** %117, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %120, align 8
  %122 = load i64, i64* %6, align 8
  %123 = call i32 %118(%struct.TYPE_17__* %121, i64 %122, i64* %8)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %110
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %212

126:                                              ; preds = %110
  %127 = load i64, i64* %8, align 8
  %128 = icmp slt i64 %127, 1
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i64, i64* %8, align 8
  %131 = icmp sgt i64 %130, 1048575
  br i1 %131, label %132, label %134

132:                                              ; preds = %129, %126
  %133 = call i32 @eprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %212

134:                                              ; preds = %129
  %135 = load i64, i64* %8, align 8
  %136 = trunc i64 %135 to i32
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call %struct.TYPE_13__* @calloc(i32 4, i32 %141)
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 1
  store %struct.TYPE_13__* %142, %struct.TYPE_13__** %144, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %146, align 8
  %148 = icmp ne %struct.TYPE_13__* %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %134
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %212

150:                                              ; preds = %134
  %151 = load i64, i64* %6, align 8
  %152 = add nsw i64 %151, 4
  store i64 %152, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %153

153:                                              ; preds = %208, %150
  %154 = load i32, i32* %14, align 4
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %211

159:                                              ; preds = %153
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 2
  %162 = load i32 (%struct.TYPE_17__*, i64, i64*)*, i32 (%struct.TYPE_17__*, i64, i64*)** %161, align 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %164, align 8
  %166 = load i64, i64* %13, align 8
  %167 = call i32 %162(%struct.TYPE_17__* %165, i64 %166, i64* %8)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %159
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %212

170:                                              ; preds = %159
  %171 = load i64, i64* %8, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %173, align 8
  %175 = load i32, i32* %14, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  store i64 %171, i64* %178, align 8
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* %13, align 8
  %183 = add nsw i64 %182, %181
  store i64 %183, i64* %13, align 8
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 2
  %186 = load i32 (%struct.TYPE_17__*, i64, i64*)*, i32 (%struct.TYPE_17__*, i64, i64*)** %185, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %188, align 8
  %190 = load i64, i64* %13, align 8
  %191 = call i32 %186(%struct.TYPE_17__* %189, i64 %190, i64* %8)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %170
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %212

194:                                              ; preds = %170
  %195 = load i64, i64* %8, align 8
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %197, align 8
  %199 = load i32, i32* %14, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  store i64 %195, i64* %202, align 8
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* %13, align 8
  %207 = add nsw i64 %206, %205
  store i64 %207, i64* %13, align 8
  br label %208

208:                                              ; preds = %194
  %209 = load i32, i32* %14, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %14, align 4
  br label %153

211:                                              ; preds = %153
  store i32 1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %212

212:                                              ; preds = %211, %193, %169, %149, %132, %125, %109, %88, %74
  %213 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %213)
  br label %214

214:                                              ; preds = %212, %48, %29, %18
  %215 = load i32, i32* %4, align 4
  ret i32 %215
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @r_str_len_utf8(i8*) #2

declare dso_local i32 @malloc(i64) #2

declare dso_local i32 @memcpy(i32, i32*, i64) #2

declare dso_local i32 @eprintf(i8*) #2

declare dso_local %struct.TYPE_13__* @calloc(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
