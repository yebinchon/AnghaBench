; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-nix-dbus.c_dbus_inhibit_sleep.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-nix-dbus.c_dbus_inhibit_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbus_sleep_info = type { i64, i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32, i32 }

@DBUS_TYPE_UINT32 = common dso_local global i32 0, align 4
@DBUS_TYPE_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Inhibit\00", align 1
@LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"dbus_message_new_method_call failed\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"libobs\00", align 1
@DBUS_TYPE_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbus_inhibit_sleep(%struct.dbus_sleep_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dbus_sleep_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dbus_sleep_info* %0, %struct.dbus_sleep_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %4, align 8
  %14 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %50

17:                                               ; preds = %3
  %18 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %4, align 8
  %19 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @dbus_pending_call_block(i32* %20)
  %22 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %4, align 8
  %23 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = call i32* @dbus_pending_call_steal_reply(i32* %24)
  store i32* %25, i32** %7, align 8
  %26 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %4, align 8
  %27 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @dbus_pending_call_unref(i32* %28)
  %30 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %4, align 8
  %31 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %30, i32 0, i32 3
  store i32* null, i32** %31, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %49

34:                                               ; preds = %17
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @DBUS_TYPE_UINT32, align 4
  %37 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %4, align 8
  %38 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %37, i32 0, i32 0
  %39 = load i32, i32* @DBUS_TYPE_INVALID, align 4
  %40 = call i64 @dbus_message_get_args(i32* %35, i32* null, i32 %36, i64* %38, i32 %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %34
  %44 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %4, align 8
  %45 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %43, %34
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @dbus_message_unref(i32* %47)
  br label %49

49:                                               ; preds = %46, %17
  br label %50

50:                                               ; preds = %49, %3
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %4, align 8
  %53 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = icmp eq i32 %51, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %175

61:                                               ; preds = %50
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %71

65:                                               ; preds = %61
  %66 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %4, align 8
  %67 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %66, i32 0, i32 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  br label %71

71:                                               ; preds = %65, %64
  %72 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %64 ], [ %70, %65 ]
  store i8* %72, i8** %8, align 8
  %73 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %4, align 8
  %74 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %73, i32 0, i32 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %4, align 8
  %79 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %78, i32 0, i32 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %4, align 8
  %84 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %83, i32 0, i32 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = call i32* @dbus_message_new_method_call(i32 %77, i32 %82, i32 %87, i8* %88)
  store i32* %89, i32** %7, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %71
  %93 = load i32, i32* @LOG_ERROR, align 4
  %94 = call i32 @blog(i32 %93, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %175

95:                                               ; preds = %71
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %140

98:                                               ; preds = %95
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  store i32 12, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %99 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %4, align 8
  %100 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %4, align 8
  %106 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  switch i32 %107, label %116 [
    i32 128, label %108
    i32 129, label %108
  ]

108:                                              ; preds = %98, %98
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %111 = load i32, i32* @DBUS_TYPE_UINT32, align 4
  %112 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %113 = load i32, i32* @DBUS_TYPE_UINT32, align 4
  %114 = load i32, i32* @DBUS_TYPE_INVALID, align 4
  %115 = call i64 (i32*, i32, ...) @dbus_message_append_args(i32* %109, i32 %110, i8** %10, i32 %111, i32* %12, i32 %112, i8** %5, i32 %113, i32* %11, i32 %114)
  store i64 %115, i64* %9, align 8
  br label %122

116:                                              ; preds = %98
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %119 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %120 = load i32, i32* @DBUS_TYPE_INVALID, align 4
  %121 = call i64 (i32*, i32, ...) @dbus_message_append_args(i32* %117, i32 %118, i8** %10, i32 %119, i8** %5, i32 %120)
  store i64 %121, i64* %9, align 8
  br label %122

122:                                              ; preds = %116, %108
  %123 = load i64, i64* %9, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %122
  %126 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %4, align 8
  %127 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %7, align 8
  %130 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %4, align 8
  %131 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %130, i32 0, i32 3
  %132 = call i64 @dbus_connection_send_with_reply(i32 %128, i32* %129, i32** %131, i32 -1)
  store i64 %132, i64* %9, align 8
  %133 = load i64, i64* %9, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %125
  %136 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %4, align 8
  %137 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %136, i32 0, i32 3
  store i32* null, i32** %137, align 8
  br label %138

138:                                              ; preds = %135, %125
  br label %139

139:                                              ; preds = %138, %122
  br label %168

140:                                              ; preds = %95
  %141 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %4, align 8
  %142 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  %147 = load i32*, i32** %7, align 8
  %148 = load i32, i32* @DBUS_TYPE_UINT32, align 4
  %149 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %4, align 8
  %150 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %149, i32 0, i32 0
  %151 = load i32, i32* @DBUS_TYPE_INVALID, align 4
  %152 = call i64 (i32*, i32, ...) @dbus_message_append_args(i32* %147, i32 %148, i64* %150, i32 %151)
  store i64 %152, i64* %9, align 8
  %153 = load i64, i64* %9, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %140
  %156 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %4, align 8
  %157 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %7, align 8
  %160 = call i64 @dbus_connection_send(i32 %158, i32* %159, i32* null)
  store i64 %160, i64* %9, align 8
  br label %161

161:                                              ; preds = %155, %140
  %162 = load i64, i64* %9, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %4, align 8
  %166 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %165, i32 0, i32 0
  store i64 0, i64* %166, align 8
  br label %167

167:                                              ; preds = %164, %161
  br label %168

168:                                              ; preds = %167, %139
  %169 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %4, align 8
  %170 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @dbus_connection_flush(i32 %171)
  %173 = load i32*, i32** %7, align 8
  %174 = call i32 @dbus_message_unref(i32* %173)
  br label %175

175:                                              ; preds = %168, %92, %60
  ret void
}

declare dso_local i32 @dbus_pending_call_block(i32*) #1

declare dso_local i32* @dbus_pending_call_steal_reply(i32*) #1

declare dso_local i32 @dbus_pending_call_unref(i32*) #1

declare dso_local i64 @dbus_message_get_args(i32*, i32*, i32, i64*, i32) #1

declare dso_local i32 @dbus_message_unref(i32*) #1

declare dso_local i32* @dbus_message_new_method_call(i32, i32, i32, i8*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @dbus_message_append_args(i32*, i32, ...) #1

declare dso_local i64 @dbus_connection_send_with_reply(i32, i32*, i32**, i32) #1

declare dso_local i64 @dbus_connection_send(i32, i32*, i32*) #1

declare dso_local i32 @dbus_connection_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
