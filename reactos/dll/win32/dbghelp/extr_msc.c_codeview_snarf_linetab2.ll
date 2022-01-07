; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_snarf_linetab2.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_snarf_linetab2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msc_debug_info = type { i32 }
%struct.codeview_linetab2 = type { i32, i32 }
%struct.codeview_lt2blk_lines = type { i32, %struct.TYPE_4__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.codeview_linetab2_file = type { i32 }
%struct.symt_function = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"No LT2_FILES_BLOCK found\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"block from %04x:%08x #%x (%x lines)\0A\00", align 1
@SymTagFunction = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"--not a func at %04x:%08x %lx tag=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Block end %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msc_debug_info*, i32*, i32, i8*, i32)* @codeview_snarf_linetab2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codeview_snarf_linetab2(%struct.msc_debug_info* %0, i32* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.msc_debug_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.codeview_linetab2*, align 8
  %14 = alloca %struct.codeview_linetab2*, align 8
  %15 = alloca %struct.codeview_lt2blk_lines*, align 8
  %16 = alloca %struct.codeview_linetab2_file*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.symt_function*, align 8
  store %struct.msc_debug_info* %0, %struct.msc_debug_info** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store %struct.codeview_linetab2* null, %struct.codeview_linetab2** %14, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = bitcast i32* %19 to %struct.codeview_linetab2*
  store %struct.codeview_linetab2* %20, %struct.codeview_linetab2** %13, align 8
  br label %21

21:                                               ; preds = %37, %5
  %22 = load %struct.codeview_linetab2*, %struct.codeview_linetab2** %13, align 8
  %23 = getelementptr inbounds %struct.codeview_linetab2, %struct.codeview_linetab2* %22, i64 1
  %24 = bitcast %struct.codeview_linetab2* %23 to i32*
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = icmp ult i32* %24, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %21
  %31 = load %struct.codeview_linetab2*, %struct.codeview_linetab2** %13, align 8
  %32 = getelementptr inbounds %struct.codeview_linetab2, %struct.codeview_linetab2* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 129
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load %struct.codeview_linetab2*, %struct.codeview_linetab2** %13, align 8
  store %struct.codeview_linetab2* %36, %struct.codeview_linetab2** %14, align 8
  br label %40

37:                                               ; preds = %30
  %38 = load %struct.codeview_linetab2*, %struct.codeview_linetab2** %13, align 8
  %39 = call %struct.codeview_linetab2* @codeview_linetab2_next_block(%struct.codeview_linetab2* %38)
  store %struct.codeview_linetab2* %39, %struct.codeview_linetab2** %13, align 8
  br label %21

40:                                               ; preds = %35, %21
  %41 = load %struct.codeview_linetab2*, %struct.codeview_linetab2** %14, align 8
  %42 = icmp ne %struct.codeview_linetab2* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %195

45:                                               ; preds = %40
  %46 = load i32*, i32** %7, align 8
  %47 = bitcast i32* %46 to %struct.codeview_linetab2*
  store %struct.codeview_linetab2* %47, %struct.codeview_linetab2** %13, align 8
  br label %48

48:                                               ; preds = %192, %181, %45
  %49 = load %struct.codeview_linetab2*, %struct.codeview_linetab2** %13, align 8
  %50 = getelementptr inbounds %struct.codeview_linetab2, %struct.codeview_linetab2* %49, i64 1
  %51 = bitcast %struct.codeview_linetab2* %50 to i32*
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = icmp ult i32* %51, %55
  br i1 %56, label %57, label %195

57:                                               ; preds = %48
  %58 = load %struct.codeview_linetab2*, %struct.codeview_linetab2** %13, align 8
  %59 = getelementptr inbounds %struct.codeview_linetab2, %struct.codeview_linetab2* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %181 [
    i32 128, label %61
    i32 129, label %180
  ]

61:                                               ; preds = %57
  %62 = load %struct.codeview_linetab2*, %struct.codeview_linetab2** %13, align 8
  %63 = getelementptr inbounds %struct.codeview_linetab2, %struct.codeview_linetab2* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp ult i64 %65, 32
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %192

68:                                               ; preds = %61
  %69 = load %struct.codeview_linetab2*, %struct.codeview_linetab2** %13, align 8
  %70 = bitcast %struct.codeview_linetab2* %69 to %struct.codeview_lt2blk_lines*
  store %struct.codeview_lt2blk_lines* %70, %struct.codeview_lt2blk_lines** %15, align 8
  %71 = load %struct.msc_debug_info*, %struct.msc_debug_info** %6, align 8
  %72 = load %struct.codeview_lt2blk_lines*, %struct.codeview_lt2blk_lines** %15, align 8
  %73 = getelementptr inbounds %struct.codeview_lt2blk_lines, %struct.codeview_lt2blk_lines* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.codeview_lt2blk_lines*, %struct.codeview_lt2blk_lines** %15, align 8
  %76 = getelementptr inbounds %struct.codeview_lt2blk_lines, %struct.codeview_lt2blk_lines* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @codeview_get_address(%struct.msc_debug_info* %71, i32 %74, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load %struct.codeview_lt2blk_lines*, %struct.codeview_lt2blk_lines** %15, align 8
  %80 = getelementptr inbounds %struct.codeview_lt2blk_lines, %struct.codeview_lt2blk_lines* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.codeview_lt2blk_lines*, %struct.codeview_lt2blk_lines** %15, align 8
  %83 = getelementptr inbounds %struct.codeview_lt2blk_lines, %struct.codeview_lt2blk_lines* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.codeview_lt2blk_lines*, %struct.codeview_lt2blk_lines** %15, align 8
  %86 = getelementptr inbounds %struct.codeview_lt2blk_lines, %struct.codeview_lt2blk_lines* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.codeview_lt2blk_lines*, %struct.codeview_lt2blk_lines** %15, align 8
  %89 = getelementptr inbounds %struct.codeview_lt2blk_lines, %struct.codeview_lt2blk_lines* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %84, i32 %87, i32 %90)
  %92 = load %struct.codeview_linetab2*, %struct.codeview_linetab2** %14, align 8
  %93 = bitcast %struct.codeview_linetab2* %92 to i8*
  %94 = getelementptr inbounds i8, i8* %93, i64 8
  %95 = load %struct.codeview_lt2blk_lines*, %struct.codeview_lt2blk_lines** %15, align 8
  %96 = getelementptr inbounds %struct.codeview_lt2blk_lines, %struct.codeview_lt2blk_lines* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %94, i64 %98
  %100 = bitcast i8* %99 to %struct.codeview_linetab2_file*
  store %struct.codeview_linetab2_file* %100, %struct.codeview_linetab2_file** %16, align 8
  %101 = load %struct.msc_debug_info*, %struct.msc_debug_info** %6, align 8
  %102 = getelementptr inbounds %struct.msc_debug_info, %struct.msc_debug_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i8*, i8** %9, align 8
  %105 = load %struct.codeview_linetab2_file*, %struct.codeview_linetab2_file** %16, align 8
  %106 = getelementptr inbounds %struct.codeview_linetab2_file, %struct.codeview_linetab2_file* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %104, i64 %108
  %110 = call i32 @source_new(i32 %103, i32* null, i8* %109)
  store i32 %110, i32* %17, align 4
  %111 = load %struct.msc_debug_info*, %struct.msc_debug_info** %6, align 8
  %112 = getelementptr inbounds %struct.msc_debug_info, %struct.msc_debug_info* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i64 @symt_find_nearest(i32 %113, i32 %114)
  %116 = inttoptr i64 %115 to %struct.symt_function*
  store %struct.symt_function* %116, %struct.symt_function** %18, align 8
  %117 = load %struct.symt_function*, %struct.symt_function** %18, align 8
  %118 = icmp ne %struct.symt_function* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %68
  %120 = load %struct.symt_function*, %struct.symt_function** %18, align 8
  %121 = getelementptr inbounds %struct.symt_function, %struct.symt_function* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @SymTagFunction, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %145

126:                                              ; preds = %119, %68
  %127 = load %struct.codeview_lt2blk_lines*, %struct.codeview_lt2blk_lines** %15, align 8
  %128 = getelementptr inbounds %struct.codeview_lt2blk_lines, %struct.codeview_lt2blk_lines* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.codeview_lt2blk_lines*, %struct.codeview_lt2blk_lines** %15, align 8
  %131 = getelementptr inbounds %struct.codeview_lt2blk_lines, %struct.codeview_lt2blk_lines* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = load %struct.symt_function*, %struct.symt_function** %18, align 8
  %135 = icmp ne %struct.symt_function* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %126
  %137 = load %struct.symt_function*, %struct.symt_function** %18, align 8
  %138 = getelementptr inbounds %struct.symt_function, %struct.symt_function* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  br label %142

141:                                              ; preds = %126
  br label %142

142:                                              ; preds = %141, %136
  %143 = phi i32 [ %140, %136 ], [ -1, %141 ]
  %144 = call i32 @WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %129, i32 %132, i32 %133, i32 %143)
  br label %192

145:                                              ; preds = %119
  store i32 0, i32* %11, align 4
  br label %146

146:                                              ; preds = %176, %145
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.codeview_lt2blk_lines*, %struct.codeview_lt2blk_lines** %15, align 8
  %149 = getelementptr inbounds %struct.codeview_lt2blk_lines, %struct.codeview_lt2blk_lines* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp ult i32 %147, %150
  br i1 %151, label %152, label %179

152:                                              ; preds = %146
  %153 = load %struct.msc_debug_info*, %struct.msc_debug_info** %6, align 8
  %154 = getelementptr inbounds %struct.msc_debug_info, %struct.msc_debug_info* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.symt_function*, %struct.symt_function** %18, align 8
  %157 = load i32, i32* %17, align 4
  %158 = load %struct.codeview_lt2blk_lines*, %struct.codeview_lt2blk_lines** %15, align 8
  %159 = getelementptr inbounds %struct.codeview_lt2blk_lines, %struct.codeview_lt2blk_lines* %158, i32 0, i32 1
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = xor i32 %165, -2147483648
  %167 = load %struct.codeview_lt2blk_lines*, %struct.codeview_lt2blk_lines** %15, align 8
  %168 = getelementptr inbounds %struct.codeview_lt2blk_lines, %struct.codeview_lt2blk_lines* %167, i32 0, i32 1
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = load i32, i32* %11, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @symt_add_func_line(i32 %155, %struct.symt_function* %156, i32 %157, i32 %166, i32 %174)
  br label %176

176:                                              ; preds = %152
  %177 = load i32, i32* %11, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %11, align 4
  br label %146

179:                                              ; preds = %146
  br label %192

180:                                              ; preds = %57
  br label %192

181:                                              ; preds = %57
  %182 = load %struct.codeview_linetab2*, %struct.codeview_linetab2** %13, align 8
  %183 = getelementptr inbounds %struct.codeview_linetab2, %struct.codeview_linetab2* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %184)
  %186 = load i32*, i32** %7, align 8
  %187 = bitcast i32* %186 to i8*
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = bitcast i8* %190 to %struct.codeview_linetab2*
  store %struct.codeview_linetab2* %191, %struct.codeview_linetab2** %13, align 8
  br label %48

192:                                              ; preds = %180, %179, %142, %67
  %193 = load %struct.codeview_linetab2*, %struct.codeview_linetab2** %13, align 8
  %194 = call %struct.codeview_linetab2* @codeview_linetab2_next_block(%struct.codeview_linetab2* %193)
  store %struct.codeview_linetab2* %194, %struct.codeview_linetab2** %13, align 8
  br label %48

195:                                              ; preds = %43, %48
  ret void
}

declare dso_local %struct.codeview_linetab2* @codeview_linetab2_next_block(%struct.codeview_linetab2*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @codeview_get_address(%struct.msc_debug_info*, i32, i32) #1

declare dso_local i32 @source_new(i32, i32*, i8*) #1

declare dso_local i64 @symt_find_nearest(i32, i32) #1

declare dso_local i32 @WARN(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @symt_add_func_line(i32, %struct.symt_function*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
