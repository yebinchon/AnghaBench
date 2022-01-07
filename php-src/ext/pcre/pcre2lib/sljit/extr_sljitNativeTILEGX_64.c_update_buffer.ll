; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeTILEGX_64.c_update_buffer.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeTILEGX_64.c_update_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_instr = type { i32 }
%struct.sljit_compiler = type { i32 }

@inst_buf_index = common dso_local global i32 0, align 4
@inst_buf = common dso_local global %struct.jit_instr* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sljit_compiler*)* @update_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_buffer(%struct.sljit_compiler* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sljit_compiler*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.jit_instr, align 4
  %7 = alloca %struct.jit_instr, align 4
  %8 = alloca %struct.jit_instr, align 4
  %9 = alloca i32, align 4
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %3, align 8
  %10 = load i32, i32* @inst_buf_index, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.jit_instr*, %struct.jit_instr** @inst_buf, align 8
  %12 = getelementptr inbounds %struct.jit_instr, %struct.jit_instr* %11, i64 0
  %13 = bitcast %struct.jit_instr* %6 to i8*
  %14 = bitcast %struct.jit_instr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  %15 = load %struct.jit_instr*, %struct.jit_instr** @inst_buf, align 8
  %16 = getelementptr inbounds %struct.jit_instr, %struct.jit_instr* %15, i64 1
  %17 = bitcast %struct.jit_instr* %7 to i8*
  %18 = bitcast %struct.jit_instr* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = load %struct.jit_instr*, %struct.jit_instr** @inst_buf, align 8
  %20 = getelementptr inbounds %struct.jit_instr, %struct.jit_instr* %19, i64 2
  %21 = bitcast %struct.jit_instr* %8 to i8*
  %22 = bitcast %struct.jit_instr* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  store i32 0, i32* %9, align 4
  %23 = call i64 (...) @assign_pipes()
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %38, %25
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @inst_buf_index, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load %struct.jit_instr*, %struct.jit_instr** @inst_buf, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.jit_instr, %struct.jit_instr* %31, i64 %33
  %35 = call i32 @get_bundle_bit(%struct.jit_instr* %34)
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %26

41:                                               ; preds = %26
  store i32 0, i32* @inst_buf_index, align 4
  %42 = load %struct.sljit_compiler*, %struct.sljit_compiler** %3, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @push_inst(%struct.sljit_compiler* %42, i32 %43)
  store i32 %44, i32* %2, align 4
  br label %153

45:                                               ; preds = %1
  %46 = load i32, i32* %5, align 4
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* @inst_buf_index, align 4
  %48 = load %struct.jit_instr*, %struct.jit_instr** @inst_buf, align 8
  %49 = getelementptr inbounds %struct.jit_instr, %struct.jit_instr* %48, i64 0
  %50 = bitcast %struct.jit_instr* %49 to i8*
  %51 = bitcast %struct.jit_instr* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 4, i1 false)
  %52 = load %struct.jit_instr*, %struct.jit_instr** @inst_buf, align 8
  %53 = getelementptr inbounds %struct.jit_instr, %struct.jit_instr* %52, i64 1
  %54 = bitcast %struct.jit_instr* %53 to i8*
  %55 = bitcast %struct.jit_instr* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 4, i1 false)
  %56 = load %struct.jit_instr*, %struct.jit_instr** @inst_buf, align 8
  %57 = getelementptr inbounds %struct.jit_instr, %struct.jit_instr* %56, i64 2
  %58 = bitcast %struct.jit_instr* %57 to i8*
  %59 = bitcast %struct.jit_instr* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 4, i1 false)
  %60 = call i64 (...) @assign_pipes()
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %103

62:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %75, %62
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @inst_buf_index, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = load %struct.jit_instr*, %struct.jit_instr** @inst_buf, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.jit_instr, %struct.jit_instr* %68, i64 %70
  %72 = call i32 @get_bundle_bit(%struct.jit_instr* %71)
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %63

78:                                               ; preds = %63
  %79 = load i32, i32* %5, align 4
  %80 = sub nsw i32 %79, 1
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load %struct.jit_instr*, %struct.jit_instr** @inst_buf, align 8
  %84 = getelementptr inbounds %struct.jit_instr, %struct.jit_instr* %83, i64 0
  %85 = bitcast %struct.jit_instr* %84 to i8*
  %86 = bitcast %struct.jit_instr* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 4 %86, i64 4, i1 false)
  store i32 1, i32* @inst_buf_index, align 4
  br label %99

87:                                               ; preds = %78
  %88 = load i32, i32* %5, align 4
  %89 = sub nsw i32 %88, 1
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load %struct.jit_instr*, %struct.jit_instr** @inst_buf, align 8
  %93 = getelementptr inbounds %struct.jit_instr, %struct.jit_instr* %92, i64 0
  %94 = bitcast %struct.jit_instr* %93 to i8*
  %95 = bitcast %struct.jit_instr* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %94, i8* align 4 %95, i64 4, i1 false)
  store i32 1, i32* @inst_buf_index, align 4
  br label %98

96:                                               ; preds = %87
  %97 = call i32 (...) @SLJIT_UNREACHABLE()
  br label %98

98:                                               ; preds = %96, %91
  br label %99

99:                                               ; preds = %98, %82
  %100 = load %struct.sljit_compiler*, %struct.sljit_compiler** %3, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @push_inst(%struct.sljit_compiler* %100, i32 %101)
  store i32 %102, i32* %2, align 4
  br label %153

103:                                              ; preds = %45
  store i32 1, i32* @inst_buf_index, align 4
  %104 = load %struct.jit_instr*, %struct.jit_instr** @inst_buf, align 8
  %105 = getelementptr inbounds %struct.jit_instr, %struct.jit_instr* %104, i64 0
  %106 = bitcast %struct.jit_instr* %105 to i8*
  %107 = bitcast %struct.jit_instr* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %106, i8* align 4 %107, i64 4, i1 false)
  %108 = load %struct.jit_instr*, %struct.jit_instr** @inst_buf, align 8
  %109 = getelementptr inbounds %struct.jit_instr, %struct.jit_instr* %108, i64 1
  %110 = bitcast %struct.jit_instr* %109 to i8*
  %111 = bitcast %struct.jit_instr* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %110, i8* align 4 %111, i64 4, i1 false)
  %112 = load %struct.jit_instr*, %struct.jit_instr** @inst_buf, align 8
  %113 = getelementptr inbounds %struct.jit_instr, %struct.jit_instr* %112, i64 2
  %114 = bitcast %struct.jit_instr* %113 to i8*
  %115 = bitcast %struct.jit_instr* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %114, i8* align 4 %115, i64 4, i1 false)
  %116 = call i64 (...) @assign_pipes()
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %148

118:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %131, %118
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @inst_buf_index, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %119
  %124 = load %struct.jit_instr*, %struct.jit_instr** @inst_buf, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.jit_instr, %struct.jit_instr* %124, i64 %126
  %128 = call i32 @get_bundle_bit(%struct.jit_instr* %127)
  %129 = load i32, i32* %9, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %123
  %132 = load i32, i32* %4, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %4, align 4
  br label %119

134:                                              ; preds = %119
  %135 = load %struct.jit_instr*, %struct.jit_instr** @inst_buf, align 8
  %136 = getelementptr inbounds %struct.jit_instr, %struct.jit_instr* %135, i64 0
  %137 = bitcast %struct.jit_instr* %136 to i8*
  %138 = bitcast %struct.jit_instr* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %137, i8* align 4 %138, i64 4, i1 false)
  %139 = load %struct.jit_instr*, %struct.jit_instr** @inst_buf, align 8
  %140 = getelementptr inbounds %struct.jit_instr, %struct.jit_instr* %139, i64 1
  %141 = bitcast %struct.jit_instr* %140 to i8*
  %142 = bitcast %struct.jit_instr* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %141, i8* align 4 %142, i64 4, i1 false)
  %143 = load i32, i32* %5, align 4
  %144 = sub nsw i32 %143, 1
  store i32 %144, i32* @inst_buf_index, align 4
  %145 = load %struct.sljit_compiler*, %struct.sljit_compiler** %3, align 8
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @push_inst(%struct.sljit_compiler* %145, i32 %146)
  store i32 %147, i32* %2, align 4
  br label %153

148:                                              ; preds = %103
  %149 = call i32 (...) @SLJIT_UNREACHABLE()
  br label %150

150:                                              ; preds = %148
  br label %151

151:                                              ; preds = %150
  %152 = call i32 (...) @SLJIT_UNREACHABLE()
  br label %153

153:                                              ; preds = %151, %134, %99, %41
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @assign_pipes(...) #2

declare dso_local i32 @get_bundle_bit(%struct.jit_instr*) #2

declare dso_local i32 @push_inst(%struct.sljit_compiler*, i32) #2

declare dso_local i32 @SLJIT_UNREACHABLE(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
