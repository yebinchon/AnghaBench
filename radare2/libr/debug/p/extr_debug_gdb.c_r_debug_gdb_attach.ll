; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_gdb.c_r_debug_gdb_attach.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_gdb.c_r_debug_gdb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_13__*, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"gdb\00", align 1
@origriogdb = common dso_local global %struct.TYPE_14__** null, align 8
@UNKNOWN = common dso_local global i8* null, align 8
@support_sw_bp = common dso_local global i8* null, align 8
@support_hw_bp = common dso_local global i8* null, align 8
@desc = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"x86\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Not supported register %s %d profile\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"lm32\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"mips\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"avr\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"v850\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"ERROR: Underlying IO descriptor is not a GDB one..\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32)* @r_debug_gdb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_debug_gdb_attach(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %6, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %19 = icmp ne %struct.TYPE_15__* %18, null
  br i1 %19, label %20, label %152

20:                                               ; preds = %2
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = icmp ne %struct.TYPE_12__* %23, null
  br i1 %24, label %25, label %152

25:                                               ; preds = %20
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %152

32:                                               ; preds = %25
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = icmp ne %struct.TYPE_14__* %35, null
  br i1 %36, label %37, label %152

37:                                               ; preds = %32
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %149, label %45

45:                                               ; preds = %37
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  store %struct.TYPE_14__* %48, %struct.TYPE_14__** %7, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  store %struct.TYPE_14__** %50, %struct.TYPE_14__*** @origriogdb, align 8
  %51 = load i8*, i8** @UNKNOWN, align 8
  store i8* %51, i8** @support_sw_bp, align 8
  %52 = load i8*, i8** @UNKNOWN, align 8
  store i8* %52, i8** @support_hw_bp, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @r_sys_arch_id(i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %9, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  store i32* %63, i32** @desc, align 8
  %64 = load i32, i32* %8, align 4
  switch i32 %64, label %148 [
    i32 128, label %65
    i32 130, label %88
    i32 134, label %89
    i32 132, label %112
    i32 131, label %125
    i32 133, label %142
    i32 129, label %145
  ]

65:                                               ; preds = %45
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 16
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 32
  br i1 %70, label %71, label %74

71:                                               ; preds = %68, %65
  %72 = load i32*, i32** @desc, align 8
  %73 = call i32 @gdbr_set_architecture(i32* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 32)
  br label %87

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 64
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32*, i32** @desc, align 8
  %79 = call i32 @gdbr_set_architecture(i32* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 64)
  br label %86

80:                                               ; preds = %74
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %84)
  store i32 0, i32* %3, align 4
  br label %153

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86, %71
  br label %148

88:                                               ; preds = %45
  br label %148

89:                                               ; preds = %45
  %90 = load i32, i32* %9, align 4
  %91 = icmp eq i32 %90, 16
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %9, align 4
  %94 = icmp eq i32 %93, 32
  br i1 %94, label %95, label %98

95:                                               ; preds = %92, %89
  %96 = load i32*, i32** @desc, align 8
  %97 = call i32 @gdbr_set_architecture(i32* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 32)
  br label %111

98:                                               ; preds = %92
  %99 = load i32, i32* %9, align 4
  %100 = icmp eq i32 %99, 64
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32*, i32** @desc, align 8
  %103 = call i32 @gdbr_set_architecture(i32* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 64)
  br label %110

104:                                              ; preds = %98
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %107, i32 %108)
  store i32 0, i32* %3, align 4
  br label %153

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %110, %95
  br label %148

112:                                              ; preds = %45
  %113 = load i32, i32* %9, align 4
  %114 = icmp eq i32 %113, 32
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32*, i32** @desc, align 8
  %117 = call i32 @gdbr_set_architecture(i32* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 32)
  br label %124

118:                                              ; preds = %112
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %121, i32 %122)
  store i32 0, i32* %3, align 4
  br label %153

124:                                              ; preds = %115
  br label %148

125:                                              ; preds = %45
  %126 = load i32, i32* %9, align 4
  %127 = icmp eq i32 %126, 32
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %9, align 4
  %130 = icmp eq i32 %129, 64
  br i1 %130, label %131, label %135

131:                                              ; preds = %128, %125
  %132 = load i32*, i32** @desc, align 8
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @gdbr_set_architecture(i32* %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %133)
  br label %141

135:                                              ; preds = %128
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %9, align 4
  %140 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %138, i32 %139)
  store i32 0, i32* %3, align 4
  br label %153

141:                                              ; preds = %131
  br label %148

142:                                              ; preds = %45
  %143 = load i32*, i32** @desc, align 8
  %144 = call i32 @gdbr_set_architecture(i32* %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 16)
  br label %148

145:                                              ; preds = %45
  %146 = load i32*, i32** @desc, align 8
  %147 = call i32 @gdbr_set_architecture(i32* %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 32)
  br label %148

148:                                              ; preds = %45, %145, %142, %141, %124, %111, %88, %87
  br label %151

149:                                              ; preds = %37
  %150 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %148
  br label %152

152:                                              ; preds = %151, %32, %25, %20, %2
  store i32 1, i32* %3, align 4
  br label %153

153:                                              ; preds = %152, %135, %118, %104, %80
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @strcmp(i8*, i64) #1

declare dso_local i32 @r_sys_arch_id(i32) #1

declare dso_local i32 @gdbr_set_architecture(i32*, i8*, i32) #1

declare dso_local i32 @eprintf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
