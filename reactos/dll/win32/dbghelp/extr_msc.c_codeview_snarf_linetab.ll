; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_snarf_linetab.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_snarf_linetab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msc_debug_info = type { i32 }
%struct.startend = type { i64 }
%struct.symt_function = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.codeview_linetab_block = type { i64*, i64, i32 }
%struct.p_string = type { i32 }

@SymTagFunction = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"--not a func at %04x:%08x %lx tag=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msc_debug_info*, i32*, i32, i64)* @codeview_snarf_linetab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codeview_snarf_linetab(%struct.msc_debug_info* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.msc_debug_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i16*, align 8
  %18 = alloca %struct.startend*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.symt_function*, align 8
  %23 = alloca %struct.codeview_linetab_block*, align 8
  store %struct.msc_debug_info* %0, %struct.msc_debug_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %24 = load i32*, i32** %6, align 8
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = bitcast i32* %25 to i16*
  %27 = load i16, i16* %26, align 2
  %28 = sext i16 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  store i32* %30, i32** %15, align 8
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %216, %4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %219

35:                                               ; preds = %31
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %15, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %36, i64 %42
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = bitcast i32* %44 to i16*
  %46 = load i16, i16* %45, align 2
  %47 = sext i16 %46 to i32
  store i32 %47, i32* %11, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  store i32* %49, i32** %16, align 8
  %50 = load i32*, i32** %16, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = bitcast i32* %53 to %struct.startend*
  store %struct.startend* %54, %struct.startend** %18, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %35
  %58 = load %struct.msc_debug_info*, %struct.msc_debug_info** %5, align 8
  %59 = getelementptr inbounds %struct.msc_debug_info, %struct.msc_debug_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.startend*, %struct.startend** %18, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.startend, %struct.startend* %61, i64 %63
  %65 = bitcast %struct.startend* %64 to %struct.p_string*
  %66 = call i8* @terminate_string(%struct.p_string* %65)
  %67 = call i32 @source_new(i32 %60, i32* null, i8* %66)
  store i32 %67, i32* %19, align 4
  br label %78

68:                                               ; preds = %35
  %69 = load %struct.msc_debug_info*, %struct.msc_debug_info** %5, align 8
  %70 = getelementptr inbounds %struct.msc_debug_info, %struct.msc_debug_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.startend*, %struct.startend** %18, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.startend, %struct.startend* %72, i64 %74
  %76 = bitcast %struct.startend* %75 to i8*
  %77 = call i32 @source_new(i32 %71, i32* null, i8* %76)
  store i32 %77, i32* %19, align 4
  br label %78

78:                                               ; preds = %68, %57
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %212, %78
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %215

83:                                               ; preds = %79
  %84 = load i32*, i32** %6, align 8
  %85 = load i32*, i32** %16, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %16, align 8
  %87 = load i32, i32* %85, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  %90 = bitcast i32* %89 to %struct.codeview_linetab_block*
  store %struct.codeview_linetab_block* %90, %struct.codeview_linetab_block** %23, align 8
  %91 = load %struct.codeview_linetab_block*, %struct.codeview_linetab_block** %23, align 8
  %92 = getelementptr inbounds %struct.codeview_linetab_block, %struct.codeview_linetab_block* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load %struct.codeview_linetab_block*, %struct.codeview_linetab_block** %23, align 8
  %95 = getelementptr inbounds %struct.codeview_linetab_block, %struct.codeview_linetab_block* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i64, i64* %93, i64 %96
  %98 = bitcast i64* %97 to i16*
  store i16* %98, i16** %17, align 8
  %99 = load %struct.msc_debug_info*, %struct.msc_debug_info** %5, align 8
  %100 = load %struct.codeview_linetab_block*, %struct.codeview_linetab_block** %23, align 8
  %101 = getelementptr inbounds %struct.codeview_linetab_block, %struct.codeview_linetab_block* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.startend*, %struct.startend** %18, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.startend, %struct.startend* %103, i64 %105
  %107 = getelementptr inbounds %struct.startend, %struct.startend* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @codeview_get_address(%struct.msc_debug_info* %99, i32 %102, i64 %108)
  store i64 %109, i64* %21, align 8
  %110 = load i64, i64* %21, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %83
  br label %212

113:                                              ; preds = %83
  store %struct.symt_function* null, %struct.symt_function** %22, align 8
  store i32 0, i32* %14, align 4
  br label %114

114:                                              ; preds = %208, %113
  %115 = load i32, i32* %14, align 4
  %116 = zext i32 %115 to i64
  %117 = load %struct.codeview_linetab_block*, %struct.codeview_linetab_block** %23, align 8
  %118 = getelementptr inbounds %struct.codeview_linetab_block, %struct.codeview_linetab_block* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ult i64 %116, %119
  br i1 %120, label %121, label %211

121:                                              ; preds = %114
  %122 = load i64, i64* %21, align 8
  %123 = load %struct.codeview_linetab_block*, %struct.codeview_linetab_block** %23, align 8
  %124 = getelementptr inbounds %struct.codeview_linetab_block, %struct.codeview_linetab_block* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* %14, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = add i64 %122, %129
  %131 = load %struct.startend*, %struct.startend** %18, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.startend, %struct.startend* %131, i64 %133
  %135 = getelementptr inbounds %struct.startend, %struct.startend* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = sub i64 %130, %136
  store i64 %137, i64* %20, align 8
  %138 = load %struct.symt_function*, %struct.symt_function** %22, align 8
  %139 = icmp ne %struct.symt_function* %138, null
  br i1 %139, label %140, label %150

140:                                              ; preds = %121
  %141 = load i64, i64* %20, align 8
  %142 = load %struct.symt_function*, %struct.symt_function** %22, align 8
  %143 = getelementptr inbounds %struct.symt_function, %struct.symt_function* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.symt_function*, %struct.symt_function** %22, align 8
  %146 = getelementptr inbounds %struct.symt_function, %struct.symt_function* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = add i64 %144, %147
  %149 = icmp uge i64 %141, %148
  br i1 %149, label %150, label %191

150:                                              ; preds = %140, %121
  %151 = load %struct.msc_debug_info*, %struct.msc_debug_info** %5, align 8
  %152 = getelementptr inbounds %struct.msc_debug_info, %struct.msc_debug_info* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i64, i64* %20, align 8
  %155 = call i64 @symt_find_nearest(i32 %153, i64 %154)
  %156 = inttoptr i64 %155 to %struct.symt_function*
  store %struct.symt_function* %156, %struct.symt_function** %22, align 8
  %157 = load %struct.symt_function*, %struct.symt_function** %22, align 8
  %158 = icmp ne %struct.symt_function* %157, null
  br i1 %158, label %159, label %166

159:                                              ; preds = %150
  %160 = load %struct.symt_function*, %struct.symt_function** %22, align 8
  %161 = getelementptr inbounds %struct.symt_function, %struct.symt_function* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @SymTagFunction, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %190

166:                                              ; preds = %159, %150
  %167 = load %struct.codeview_linetab_block*, %struct.codeview_linetab_block** %23, align 8
  %168 = getelementptr inbounds %struct.codeview_linetab_block, %struct.codeview_linetab_block* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.codeview_linetab_block*, %struct.codeview_linetab_block** %23, align 8
  %171 = getelementptr inbounds %struct.codeview_linetab_block, %struct.codeview_linetab_block* %170, i32 0, i32 0
  %172 = load i64*, i64** %171, align 8
  %173 = load i32, i32* %14, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %172, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %20, align 8
  %178 = load %struct.symt_function*, %struct.symt_function** %22, align 8
  %179 = icmp ne %struct.symt_function* %178, null
  br i1 %179, label %180, label %185

180:                                              ; preds = %166
  %181 = load %struct.symt_function*, %struct.symt_function** %22, align 8
  %182 = getelementptr inbounds %struct.symt_function, %struct.symt_function* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  br label %186

185:                                              ; preds = %166
  br label %186

186:                                              ; preds = %185, %180
  %187 = phi i64 [ %184, %180 ], [ -1, %185 ]
  %188 = trunc i64 %187 to i32
  %189 = call i32 @WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %169, i64 %176, i64 %177, i32 %188)
  store %struct.symt_function* null, %struct.symt_function** %22, align 8
  br label %211

190:                                              ; preds = %159
  br label %191

191:                                              ; preds = %190, %140
  %192 = load %struct.msc_debug_info*, %struct.msc_debug_info** %5, align 8
  %193 = getelementptr inbounds %struct.msc_debug_info, %struct.msc_debug_info* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.symt_function*, %struct.symt_function** %22, align 8
  %196 = load i32, i32* %19, align 4
  %197 = load i16*, i16** %17, align 8
  %198 = load i32, i32* %14, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds i16, i16* %197, i64 %199
  %201 = load i16, i16* %200, align 2
  %202 = load i64, i64* %20, align 8
  %203 = load %struct.symt_function*, %struct.symt_function** %22, align 8
  %204 = getelementptr inbounds %struct.symt_function, %struct.symt_function* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = sub i64 %202, %205
  %207 = call i32 @symt_add_func_line(i32 %194, %struct.symt_function* %195, i32 %196, i16 zeroext %201, i64 %206)
  br label %208

208:                                              ; preds = %191
  %209 = load i32, i32* %14, align 4
  %210 = add i32 %209, 1
  store i32 %210, i32* %14, align 4
  br label %114

211:                                              ; preds = %186, %114
  br label %212

212:                                              ; preds = %211, %112
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %13, align 4
  br label %79

215:                                              ; preds = %79
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %12, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %12, align 4
  br label %31

219:                                              ; preds = %31
  ret void
}

declare dso_local i32 @source_new(i32, i32*, i8*) #1

declare dso_local i8* @terminate_string(%struct.p_string*) #1

declare dso_local i64 @codeview_get_address(%struct.msc_debug_info*, i32, i64) #1

declare dso_local i64 @symt_find_nearest(i32, i64) #1

declare dso_local i32 @WARN(i8*, i32, i64, i64, i32) #1

declare dso_local i32 @symt_add_func_line(i32, %struct.symt_function*, i32, i16 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
