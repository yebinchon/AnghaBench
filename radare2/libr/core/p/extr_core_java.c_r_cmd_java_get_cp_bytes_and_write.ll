; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_r_cmd_java_get_cp_bytes_and_write.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_r_cmd_java_get_cp_bytes_and_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [86 x i8] c"[X] r_cmd_java_get_cp_bytes_and_write: Failed to resize the file correctly aborting.\0A\00", align 1
@.str.1 = private unnamed_addr constant [98 x i8] c"[X] r_cmd_java_get_cp_bytes_and_write: Failed to write the bytes to the file correctly aborting.\0A\00", align 1
@.str.2 = private unnamed_addr constant [88 x i8] c"[X] r_cmd_java_get_cp_bytes_and_write: Failed to read the file in aborted, bin reload.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_18__*, i32, i64, i32*, i64)* @r_cmd_java_get_cp_bytes_and_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_cmd_java_get_cp_bytes_and_write(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, i32 %2, i64 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.TYPE_19__* @r_bin_java_get_item_from_bin_cp_list(%struct.TYPE_18__* %22, i32 %23)
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %15, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @r_io_size(i32 %27)
  store i64 %28, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %30 = icmp ne %struct.TYPE_18__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %6
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @r_bin_java_cp_get_size(%struct.TYPE_18__* %32, i32 %33)
  br label %36

35:                                               ; preds = %6
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i32 [ %34, %31 ], [ -1, %35 ]
  store i32 %37, i32* %18, align 4
  store i32* null, i32** %19, align 8
  %38 = load i32, i32* %18, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %7, align 4
  br label %183

42:                                               ; preds = %36
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %12, align 8
  %47 = load i64, i64* %13, align 8
  %48 = call i32* @r_bin_java_cp_get_bytes(i32 %45, i32* %17, i32* %46, i64 %47)
  store i32* %48, i32** %19, align 8
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %18, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %79

52:                                               ; preds = %42
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i32, i32* %18, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %18, align 4
  %60 = sub nsw i32 %58, %59
  %61 = call i64 @r_core_shift_block(%struct.TYPE_17__* %53, i64 %57, i32 0, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %52
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* %16, align 8
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = load i32, i32* %18, align 4
  %72 = sext i32 %71 to i64
  %73 = sub nsw i64 %70, %72
  %74 = call i64 @r_io_resize(i32 %66, i64 %73)
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %63, %52
  %77 = phi i1 [ false, %52 ], [ %75, %63 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %14, align 4
  br label %94

79:                                               ; preds = %42
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %18, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %18, align 4
  %88 = sub nsw i32 %86, %87
  %89 = call i32 @r_core_extend_at(%struct.TYPE_17__* %84, i64 %85, i32 %88)
  store i32 %89, i32* %14, align 4
  br label %93

90:                                               ; preds = %79
  %91 = call i32 @eprintf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %7, align 4
  br label %183

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93, %76
  %95 = load i32, i32* %17, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %94
  %98 = load i32*, i32** %19, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %115

100:                                              ; preds = %97
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load i32*, i32** %19, align 8
  %104 = load i32, i32* %17, align 4
  %105 = call i64 @r_core_write_at(%struct.TYPE_17__* %101, i64 %102, i32* %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %109 = load i64, i64* %11, align 8
  %110 = call i64 @r_core_seek(%struct.TYPE_17__* %108, i64 %109, i32 1)
  %111 = icmp ne i64 %110, 0
  br label %112

112:                                              ; preds = %107, %100
  %113 = phi i1 [ false, %100 ], [ %111, %107 ]
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %14, align 4
  br label %115

115:                                              ; preds = %112, %97, %94
  %116 = load i32, i32* %14, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = call i32 @eprintf(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i32, i32* %14, align 4
  store i32 %120, i32* %7, align 4
  br label %183

121:                                              ; preds = %115
  %122 = load i32*, i32** %19, align 8
  %123 = call i32 @R_FREE(i32* %122)
  %124 = load i32, i32* %14, align 4
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %181

126:                                              ; preds = %121
  store i64 0, i64* %20, align 8
  store i32* null, i32** %21, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @r_io_use_fd(i32 %129, i32 %134)
  store i32 %135, i32* %14, align 4
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @r_io_size(i32 %138)
  store i64 %139, i64* %20, align 8
  %140 = load i64, i64* %20, align 8
  %141 = icmp sgt i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %126
  %143 = load i64, i64* %20, align 8
  %144 = call i32* @malloc(i64 %143)
  br label %146

145:                                              ; preds = %126
  br label %146

146:                                              ; preds = %145, %142
  %147 = phi i32* [ %144, %142 ], [ null, %145 ]
  store i32* %147, i32** %21, align 8
  %148 = load i32*, i32** %21, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %180

150:                                              ; preds = %146
  %151 = load i32*, i32** %21, align 8
  %152 = load i64, i64* %20, align 8
  %153 = call i32 @memset(i32* %151, i32 0, i64 %152)
  %154 = load i64, i64* %20, align 8
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** %21, align 8
  %162 = load i64, i64* %20, align 8
  %163 = call i64 @r_io_read_at(i32 %157, i32 %160, i32* %161, i64 %162)
  %164 = icmp eq i64 %154, %163
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i32 1, i32 0
  store i32 %166, i32* %14, align 4
  %167 = load i32, i32* %14, align 4
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %175

169:                                              ; preds = %150
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %172 = load i32*, i32** %21, align 8
  %173 = load i64, i64* %20, align 8
  %174 = call i32 @r_cmd_java_reload_bin_from_buf(%struct.TYPE_17__* %170, %struct.TYPE_18__* %171, i32* %172, i64 %173)
  store i32 %174, i32* %14, align 4
  br label %177

175:                                              ; preds = %150
  %176 = call i32 @eprintf(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0))
  br label %177

177:                                              ; preds = %175, %169
  %178 = load i32*, i32** %21, align 8
  %179 = call i32 @free(i32* %178)
  br label %180

180:                                              ; preds = %177, %146
  br label %181

181:                                              ; preds = %180, %121
  %182 = load i32, i32* %14, align 4
  store i32 %182, i32* %7, align 4
  br label %183

183:                                              ; preds = %181, %118, %90, %40
  %184 = load i32, i32* %7, align 4
  ret i32 %184
}

declare dso_local %struct.TYPE_19__* @r_bin_java_get_item_from_bin_cp_list(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @r_io_size(i32) #1

declare dso_local i32 @r_bin_java_cp_get_size(%struct.TYPE_18__*, i32) #1

declare dso_local i32* @r_bin_java_cp_get_bytes(i32, i32*, i32*, i64) #1

declare dso_local i64 @r_core_shift_block(%struct.TYPE_17__*, i64, i32, i32) #1

declare dso_local i64 @r_io_resize(i32, i64) #1

declare dso_local i32 @r_core_extend_at(%struct.TYPE_17__*, i64, i32) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i64 @r_core_write_at(%struct.TYPE_17__*, i64, i32*, i32) #1

declare dso_local i64 @r_core_seek(%struct.TYPE_17__*, i64, i32) #1

declare dso_local i32 @R_FREE(i32*) #1

declare dso_local i32 @r_io_use_fd(i32, i32) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i64 @r_io_read_at(i32, i32, i32*, i64) #1

declare dso_local i32 @r_cmd_java_reload_bin_from_buf(%struct.TYPE_17__*, %struct.TYPE_18__*, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
