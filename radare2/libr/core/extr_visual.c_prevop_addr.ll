; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_visual.c_prevop_addr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_visual.c_prevop_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@OPDELTA = common dso_local global i32 0, align 4
@R_ANAL_ARCHINFO_MIN_OP_SIZE = common dso_local global i32 0, align 4
@R_ANAL_ARCHINFO_MAX_OP_SIZE = common dso_local global i32 0, align 4
@UT64_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"asm.flags.middle\00", align 1
@R_ANAL_OP_MASK_BASIC = common dso_local global i32 0, align 4
@R_MIDFLAGS_REALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i64)* @prevop_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @prevop_addr(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  %21 = load i32, i32* @OPDELTA, align 4
  %22 = mul nsw i32 %21, 2
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %6, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @R_ANAL_ARCHINFO_MIN_OP_SIZE, align 4
  %30 = call i32 @r_anal_archinfo(i32 %28, i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @R_ANAL_ARCHINFO_MAX_OP_SIZE, align 4
  %35 = call i32 @r_anal_archinfo(i32 %33, i32 %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %2
  %40 = load i32, i32* %15, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i64, i64* %5, align 8
  %44 = sub nsw i64 %43, 4
  store i64 %44, i64* %3, align 8
  store i32 1, i32* %17, align 4
  br label %195

45:                                               ; preds = %39
  %46 = load i64, i64* %5, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %46, %48
  store i64 %49, i64* %3, align 8
  store i32 1, i32* %17, align 4
  br label %195

50:                                               ; preds = %2
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %5, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = sub nsw i64 %54, %56
  %58 = call i32* @r_anal_bb_from_offset(i32 %53, i64 %57)
  store i32* %58, i32** %10, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %50
  %62 = load i32*, i32** %10, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %63, %65
  %67 = call i64 @r_anal_bb_opaddr_at(i32* %62, i64 %66)
  store i64 %67, i64* %18, align 8
  %68 = load i64, i64* %18, align 8
  %69 = load i64, i64* @UT64_MAX, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i64, i64* %18, align 8
  store i64 %72, i64* %3, align 8
  store i32 1, i32* %17, align 4
  br label %195

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73, %50
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @r_config_get_i(i32 %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %78, i32* %19, align 4
  %79 = load i64, i64* %5, align 8
  store i64 %79, i64* %8, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load i32, i32* @OPDELTA, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp sgt i64 %80, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %74
  %85 = load i64, i64* %8, align 8
  %86 = load i32, i32* @OPDELTA, align 4
  %87 = sext i32 %86 to i64
  %88 = sub nsw i64 %85, %87
  br label %90

89:                                               ; preds = %74
  br label %90

90:                                               ; preds = %89, %84
  %91 = phi i64 [ %88, %84 ], [ 0, %89 ]
  store i64 %91, i64* %9, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %9, align 8
  %96 = mul nuw i64 4, %23
  %97 = trunc i64 %96 to i32
  %98 = call i32 @r_io_read_at(i32 %94, i64 %95, i32* %25, i32 %97)
  store i32 0, i32* %14, align 4
  br label %99

99:                                               ; preds = %183, %90
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = mul nuw i64 4, %23
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %104, label %186

104:                                              ; preds = %99
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i64, i64* %9, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %108, %110
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %25, i64 %113
  %115 = mul nuw i64 4, %23
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = sub i64 %115, %117
  %119 = trunc i64 %118 to i32
  %120 = load i32, i32* @R_ANAL_OP_MASK_BASIC, align 4
  %121 = call i32 @r_anal_op(i32 %107, %struct.TYPE_8__* %11, i64 %111, i32* %114, i32 %119, i32 %120)
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %162

124:                                              ; preds = %104
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp slt i32 %127, 1
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i32 1, i32* %12, align 4
  br label %130

130:                                              ; preds = %129, %124
  %131 = call i32 @r_anal_op_fini(%struct.TYPE_8__* %11)
  %132 = load i32, i32* %19, align 4
  %133 = load i32, i32* @R_MIDFLAGS_REALIGN, align 4
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %135, label %161

135:                                              ; preds = %130
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %137 = load i64, i64* %9, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %137, %139
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @r_core_flag_in_middle(%struct.TYPE_7__* %136, i64 %140, i32 %141, i32* %19)
  store i32 %142, i32* %20, align 4
  %143 = load i32, i32* %20, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %135
  %146 = load i64, i64* %9, align 8
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %146, %148
  %150 = load i32, i32* %20, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %149, %151
  %153 = load i64, i64* %8, align 8
  %154 = icmp slt i64 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %145
  %156 = load i32, i32* %20, align 4
  %157 = sub nsw i32 %156, 1
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %14, align 4
  br label %183

160:                                              ; preds = %145, %135
  br label %161

161:                                              ; preds = %160, %130
  br label %163

162:                                              ; preds = %104
  store i32 1, i32* %12, align 4
  br label %163

163:                                              ; preds = %162, %161
  %164 = load i64, i64* %8, align 8
  %165 = load i64, i64* %9, align 8
  %166 = load i32, i32* %14, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %165, %167
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %168, %170
  %172 = icmp sle i64 %164, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %163
  %174 = load i64, i64* %9, align 8
  %175 = load i32, i32* %14, align 4
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %174, %176
  store i64 %177, i64* %3, align 8
  store i32 1, i32* %17, align 4
  br label %195

178:                                              ; preds = %163
  %179 = load i32, i32* %12, align 4
  %180 = sub nsw i32 %179, 1
  %181 = load i32, i32* %14, align 4
  %182 = add nsw i32 %181, %180
  store i32 %182, i32* %14, align 4
  br label %183

183:                                              ; preds = %178, %155
  %184 = load i32, i32* %14, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %14, align 4
  br label %99

186:                                              ; preds = %99
  %187 = load i64, i64* %8, align 8
  %188 = icmp sgt i64 %187, 4
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load i64, i64* %8, align 8
  %191 = sub nsw i64 %190, 4
  br label %193

192:                                              ; preds = %186
  br label %193

193:                                              ; preds = %192, %189
  %194 = phi i64 [ %191, %189 ], [ 0, %192 ]
  store i64 %194, i64* %3, align 8
  store i32 1, i32* %17, align 4
  br label %195

195:                                              ; preds = %193, %173, %71, %45, %42
  %196 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %196)
  %197 = load i64, i64* %3, align 8
  ret i64 %197
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @r_anal_archinfo(i32, i32) #2

declare dso_local i32* @r_anal_bb_from_offset(i32, i64) #2

declare dso_local i64 @r_anal_bb_opaddr_at(i32*, i64) #2

declare dso_local i32 @r_config_get_i(i32, i8*) #2

declare dso_local i32 @r_io_read_at(i32, i64, i32*, i32) #2

declare dso_local i32 @r_anal_op(i32, %struct.TYPE_8__*, i64, i32*, i32, i32) #2

declare dso_local i32 @r_anal_op_fini(%struct.TYPE_8__*) #2

declare dso_local i32 @r_core_flag_in_middle(%struct.TYPE_7__*, i64, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
