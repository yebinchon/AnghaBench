; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_write.c_cmd_write_value.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_write.c_cmd_write_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"cfg.wseek\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"cfg.bigendian\00", align 1
@help_msg_wv = common dso_local global i32 0, align 4
@R_IO_SEEK_SET = common dso_local global i32 0, align 4
@UT64_MAX = common dso_local global i64 0, align 8
@UT64_32U = common dso_local global i64 0, align 8
@UT8_MAX = common dso_local global i64 0, align 8
@UT16_MAX = common dso_local global i64 0, align 8
@UT32_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i8*)* @cmd_write_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_write_value(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @r_config_get_i(i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @r_config_get_i(i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %9, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %196

26:                                               ; preds = %2
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  switch i32 %35, label %44 [
    i32 63, label %36
    i32 49, label %40
    i32 50, label %41
    i32 52, label %42
    i32 56, label %43
  ]

36:                                               ; preds = %31
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = load i32, i32* @help_msg_wv, align 4
  %39 = call i32 @r_core_cmd_help(%struct.TYPE_10__* %37, i32 %38)
  br label %196

40:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %44

41:                                               ; preds = %31
  store i32 2, i32* %5, align 4
  br label %44

42:                                               ; preds = %31
  store i32 4, i32* %5, align 4
  br label %44

43:                                               ; preds = %31
  store i32 8, i32* %5, align 4
  br label %44

44:                                               ; preds = %31, %43, %42, %41, %40
  br label %45

45:                                               ; preds = %44, %26
  %46 = load i8*, i8** %4, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %73

48:                                               ; preds = %45
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %48
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %54
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  %72 = call i64 @r_num_math(%struct.TYPE_11__* %69, i8* %71)
  store i64 %72, i64* %6, align 8
  br label %73

73:                                               ; preds = %66, %60, %54, %48, %45
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = icmp ne %struct.TYPE_9__* %76, null
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @r_io_use_fd(i32 %81, i32 %86)
  br label %88

88:                                               ; preds = %78, %73
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @R_IO_SEEK_SET, align 4
  %96 = call i64 @r_io_seek(i32 %91, i32 %94, i32 %95)
  store i64 %96, i64* %10, align 8
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* @UT64_MAX, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %88
  br label %196

101:                                              ; preds = %88
  %102 = load i32, i32* %5, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* @UT64_32U, align 8
  %107 = and i64 %105, %106
  %108 = icmp ne i64 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 8, i32 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %104, %101
  %112 = load i32, i32* %5, align 4
  switch i32 %112, label %193 [
    i32 1, label %113
    i32 2, label %133
    i32 4, label %154
    i32 8, label %175
  ]

113:                                              ; preds = %111
  %114 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %115 = load i64, i64* %6, align 8
  %116 = load i64, i64* @UT8_MAX, align 8
  %117 = and i64 %115, %116
  %118 = trunc i64 %117 to i32
  %119 = call i32 @r_write_ble8(i32* %114, i32 %118)
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %124 = call i32 @r_io_write(i32 %122, i32* %123, i32 1)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %113
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %128 = call i32 @cmd_write_fail(%struct.TYPE_10__* %127)
  br label %132

129:                                              ; preds = %113
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %131 = call i32 @WSEEK(%struct.TYPE_10__* %130, i32 1)
  br label %132

132:                                              ; preds = %129, %126
  br label %193

133:                                              ; preds = %111
  %134 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %135 = load i64, i64* %6, align 8
  %136 = load i64, i64* @UT16_MAX, align 8
  %137 = and i64 %135, %136
  %138 = trunc i64 %137 to i32
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @r_write_ble16(i32* %134, i32 %138, i32 %139)
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %145 = call i32 @r_io_write(i32 %143, i32* %144, i32 2)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %133
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %149 = call i32 @cmd_write_fail(%struct.TYPE_10__* %148)
  br label %153

150:                                              ; preds = %133
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %152 = call i32 @WSEEK(%struct.TYPE_10__* %151, i32 2)
  br label %153

153:                                              ; preds = %150, %147
  br label %193

154:                                              ; preds = %111
  %155 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %156 = load i64, i64* %6, align 8
  %157 = load i64, i64* @UT32_MAX, align 8
  %158 = and i64 %156, %157
  %159 = trunc i64 %158 to i32
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @r_write_ble32(i32* %155, i32 %159, i32 %160)
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %166 = call i32 @r_io_write(i32 %164, i32* %165, i32 4)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %154
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %170 = call i32 @cmd_write_fail(%struct.TYPE_10__* %169)
  br label %174

171:                                              ; preds = %154
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %173 = call i32 @WSEEK(%struct.TYPE_10__* %172, i32 4)
  br label %174

174:                                              ; preds = %171, %168
  br label %193

175:                                              ; preds = %111
  %176 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %177 = load i64, i64* %6, align 8
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @r_write_ble64(i32* %176, i64 %177, i32 %178)
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %184 = call i32 @r_io_write(i32 %182, i32* %183, i32 8)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %175
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %188 = call i32 @cmd_write_fail(%struct.TYPE_10__* %187)
  br label %192

189:                                              ; preds = %175
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %191 = call i32 @WSEEK(%struct.TYPE_10__* %190, i32 8)
  br label %192

192:                                              ; preds = %189, %186
  br label %193

193:                                              ; preds = %111, %192, %174, %153, %132
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %195 = call i32 @r_core_block_read(%struct.TYPE_10__* %194)
  br label %196

196:                                              ; preds = %193, %100, %36, %25
  ret void
}

declare dso_local i32 @r_config_get_i(i32, i8*) #1

declare dso_local i32 @r_core_cmd_help(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @r_num_math(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @r_io_use_fd(i32, i32) #1

declare dso_local i64 @r_io_seek(i32, i32, i32) #1

declare dso_local i32 @r_write_ble8(i32*, i32) #1

declare dso_local i32 @r_io_write(i32, i32*, i32) #1

declare dso_local i32 @cmd_write_fail(%struct.TYPE_10__*) #1

declare dso_local i32 @WSEEK(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @r_write_ble16(i32*, i32, i32) #1

declare dso_local i32 @r_write_ble32(i32*, i32, i32) #1

declare dso_local i32 @r_write_ble64(i32*, i64, i32) #1

declare dso_local i32 @r_core_block_read(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
