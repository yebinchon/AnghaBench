; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_gdb.c_r_debug_gdb_reg_write.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_gdb.c_r_debug_gdb_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i64, i64 (i64, i8*)* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@desc = common dso_local global i32 0, align 4
@R_DEBUG_REASON_UNKNOWN = common dso_local global i32 0, align 4
@reg_buf = common dso_local global i32* null, align 8
@R_REG_NAME_PC = common dso_local global i32 0, align 4
@buf_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"cfg.bigendian\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i32*, i32)* @r_debug_gdb_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_debug_gdb_reg_write(%struct.TYPE_14__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = call i32 @check_connection(%struct.TYPE_14__* %19)
  %21 = load i32, i32* @desc, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @R_DEBUG_REASON_UNKNOWN, align 4
  store i32 %24, i32* %5, align 4
  br label %161

25:                                               ; preds = %4
  %26 = load i32*, i32** @reg_buf, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %161

29:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @R_REG_NAME_PC, align 4
  %41 = call i8* @r_reg_get_name(i32 %39, i32 %40)
  store i8* %41, i8** %12, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %12, align 8
  %48 = call %struct.TYPE_13__* @r_reg_get(i32 %46, i8* %47, i32 0)
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %13, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %50 = icmp ne %struct.TYPE_13__* %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %29
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %61, %51
  br label %66

66:                                               ; preds = %65, %29
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @r_reg_get_bytes(i32 %69, i32 %70, i32* %10)
  %72 = call i32 @free(i32 %71)
  %73 = load i32, i32* @buf_size, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %96

76:                                               ; preds = %66
  %77 = load i32*, i32** @reg_buf, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = call i32* @realloc(i32* %77, i32 %81)
  store i32* %82, i32** %14, align 8
  %83 = load i32*, i32** %14, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %76
  store i32 -1, i32* %5, align 4
  br label %161

86:                                               ; preds = %76
  %87 = load i32*, i32** %14, align 8
  store i32* %87, i32** @reg_buf, align 8
  %88 = load i32*, i32** %14, align 8
  %89 = load i32, i32* @buf_size, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @buf_size, align 4
  %94 = sub nsw i32 %92, %93
  %95 = call i32 @memset(i32* %91, i32 0, i32 %94)
  br label %96

96:                                               ; preds = %86, %66
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %15, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %96
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i64 (i64, i8*)*, i64 (i64, i8*)** %105, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i64 %106(i64 %110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %112 = icmp ne i64 %111, 0
  br label %113

113:                                              ; preds = %102, %96
  %114 = phi i1 [ false, %96 ], [ %112, %102 ]
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %16, align 4
  br label %116

116:                                              ; preds = %152, %113
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load i32*, i32** @reg_buf, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %124 = load i32, i32* %11, align 4
  %125 = call %struct.TYPE_13__* @r_reg_next_diff(i32 %119, i32 %120, i32* %121, i32 %122, %struct.TYPE_13__* %123, i32 %124)
  store %struct.TYPE_13__* %125, %struct.TYPE_13__** %15, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %127 = icmp ne %struct.TYPE_13__* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %116
  br label %160

129:                                              ; preds = %116
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %134 = call i32 @r_reg_get_value(i32 %132, %struct.TYPE_13__* %133)
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* %11, align 4
  %136 = sdiv i32 %135, 8
  store i32 %136, i32* %18, align 4
  %137 = load i32, i32* %16, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %129
  %140 = load i32, i32* %18, align 4
  switch i32 %140, label %148 [
    i32 2, label %141
    i32 4, label %144
    i32 8, label %147
  ]

141:                                              ; preds = %139
  %142 = load i32, i32* %17, align 4
  %143 = call i32 @r_swap_ut16(i32 %142)
  store i32 %143, i32* %17, align 4
  br label %151

144:                                              ; preds = %139
  %145 = load i32, i32* %17, align 4
  %146 = call i32 @r_swap_ut32(i32 %145)
  store i32 %146, i32* %17, align 4
  br label %151

147:                                              ; preds = %139
  br label %148

148:                                              ; preds = %139, %147
  %149 = load i32, i32* %17, align 4
  %150 = call i32 @r_swap_ut64(i32 %149)
  store i32 %150, i32* %17, align 4
  br label %151

151:                                              ; preds = %148, %144, %141
  br label %152

152:                                              ; preds = %151, %129
  %153 = load i32, i32* @desc, align 4
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = bitcast i32* %17 to i8*
  %158 = load i32, i32* %18, align 4
  %159 = call i32 @gdbr_write_reg(i32 %153, i32 %156, i8* %157, i32 %158)
  br label %116

160:                                              ; preds = %128
  store i32 1, i32* %5, align 4
  br label %161

161:                                              ; preds = %160, %85, %28, %23
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local i32 @check_connection(%struct.TYPE_14__*) #1

declare dso_local i8* @r_reg_get_name(i32, i32) #1

declare dso_local %struct.TYPE_13__* @r_reg_get(i32, i8*, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @r_reg_get_bytes(i32, i32, i32*) #1

declare dso_local i32* @realloc(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_13__* @r_reg_next_diff(i32, i32, i32*, i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @r_reg_get_value(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @r_swap_ut16(i32) #1

declare dso_local i32 @r_swap_ut32(i32) #1

declare dso_local i32 @r_swap_ut64(i32) #1

declare dso_local i32 @gdbr_write_reg(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
