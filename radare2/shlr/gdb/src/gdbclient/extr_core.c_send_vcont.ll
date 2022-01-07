; ModuleID = '/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbclient/extr_core.c_send_vcont.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbclient/extr_core.c_send_vcont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s;%s\00", align 1
@CMD_C = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"%s;%s:%s\00", align 1
@reg_cache = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@_isbreaked = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\03\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_vcont(%struct.TYPE_15__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [255 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = bitcast [255 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 255, i1 false)
  store i32 -1, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = icmp ne %struct.TYPE_15__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %168

16:                                               ; preds = %3
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 0
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %23, i32 254, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i32 %25, i32* %9, align 4
  br label %107

26:                                               ; preds = %16
  store i32 0, i32* %11, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  switch i32 %29, label %84 [
    i32 115, label %30
    i32 83, label %39
    i32 99, label %48
    i32 67, label %57
    i32 116, label %66
    i32 114, label %75
  ]

30:                                               ; preds = %26
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 1, i32* %11, align 4
  br label %38

38:                                               ; preds = %37, %30
  br label %84

39:                                               ; preds = %26
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 1, i32* %11, align 4
  br label %47

47:                                               ; preds = %46, %39
  br label %84

48:                                               ; preds = %26
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 1, i32* %11, align 4
  br label %56

56:                                               ; preds = %55, %48
  br label %84

57:                                               ; preds = %26
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 1, i32* %11, align 4
  br label %65

65:                                               ; preds = %64, %57
  br label %84

66:                                               ; preds = %26
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i32 1, i32* %11, align 4
  br label %74

74:                                               ; preds = %73, %66
  br label %84

75:                                               ; preds = %26
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store i32 1, i32* %11, align 4
  br label %83

83:                                               ; preds = %82, %75
  br label %84

84:                                               ; preds = %26, %83, %74, %65, %56, %47, %38
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %84
  %88 = load i8*, i8** %7, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 0
  %92 = load i8*, i8** @CMD_C, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %91, i32 254, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %92, i8* %93)
  store i32 %94, i32* %9, align 4
  br label %101

95:                                               ; preds = %87
  %96 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 0
  %97 = load i8*, i8** @CMD_C, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %96, i32 254, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %97, i8* %98, i8* %99)
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %95, %90
  br label %106

102:                                              ; preds = %84
  %103 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 0
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %103, i32 254, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %104)
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %102, %101
  br label %107

107:                                              ; preds = %106, %22
  %108 = load i32, i32* %9, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %4, align 4
  br label %168

112:                                              ; preds = %107
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %114 = call i32 @gdbr_lock_enter(%struct.TYPE_15__* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  br label %162

117:                                              ; preds = %112
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @reg_cache, i32 0, i32 0), align 4
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  store i32 0, i32* %120, align 4
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %122 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 0
  %123 = call i32 @send_msg(%struct.TYPE_15__* %121, i8* %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %117
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %4, align 4
  br label %168

128:                                              ; preds = %117
  %129 = call i8* (...) @r_cons_sleep_begin()
  store i8* %129, i8** %10, align 8
  br label %130

130:                                              ; preds = %145, %128
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %132 = call i32 @read_packet(%struct.TYPE_15__* %131, i32 1)
  store i32 %132, i32* %9, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %130
  %135 = load i32, i32* @_isbreaked, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %134
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @r_socket_is_connected(i32 %140)
  %142 = icmp ne i64 %141, 0
  br label %143

143:                                              ; preds = %137, %134, %130
  %144 = phi i1 [ false, %134 ], [ false, %130 ], [ %142, %137 ]
  br i1 %144, label %145, label %146

145:                                              ; preds = %143
  br label %130

146:                                              ; preds = %143
  %147 = load i32, i32* @_isbreaked, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %146
  store i32 0, i32* @_isbreaked, align 4
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @r_socket_write(i32 %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %155 = call i32 @read_packet(%struct.TYPE_15__* %154, i32 0)
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  store i32 -1, i32* %9, align 4
  br label %162

158:                                              ; preds = %149
  br label %159

159:                                              ; preds = %158, %146
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %161 = call i32 @handle_cont(%struct.TYPE_15__* %160)
  store i32 %161, i32* %9, align 4
  br label %162

162:                                              ; preds = %159, %157, %116
  %163 = load i8*, i8** %10, align 8
  %164 = call i32 @r_cons_sleep_end(i8* %163)
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %166 = call i32 @gdbr_lock_leave(%struct.TYPE_15__* %165)
  %167 = load i32, i32* %9, align 4
  store i32 %167, i32* %4, align 4
  br label %168

168:                                              ; preds = %162, %126, %110, %15
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @gdbr_lock_enter(%struct.TYPE_15__*) #2

declare dso_local i32 @send_msg(%struct.TYPE_15__*, i8*) #2

declare dso_local i8* @r_cons_sleep_begin(...) #2

declare dso_local i32 @read_packet(%struct.TYPE_15__*, i32) #2

declare dso_local i64 @r_socket_is_connected(i32) #2

declare dso_local i32 @r_socket_write(i32, i8*, i32) #2

declare dso_local i32 @handle_cont(%struct.TYPE_15__*) #2

declare dso_local i32 @r_cons_sleep_end(i8*) #2

declare dso_local i32 @gdbr_lock_leave(%struct.TYPE_15__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
