; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_enum.c_DSoundEnumerate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_enum.c_DSoundEnumerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64*, %struct.TYPE_10__*, i32* }
%struct.TYPE_9__ = type { i32* }

@RootInfo = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"No callback\0A\00", align 1
@DSERR_INVALIDPARAM = common dso_local global i32 0, align 4
@IDS_PRIMARY_PLAYBACK_DEVICE = common dso_local global i32 0, align 4
@IDS_PRIMARY_RECORD_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@DS_OK = common dso_local global i32 0, align 4
@GUID_NULL = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@MAXPNAMELEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DSoundEnumerate(i32* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_9__, align 8
  %14 = alloca %struct.TYPE_9__, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** @RootInfo, align 8
  %16 = icmp ne %struct.TYPE_10__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = call i32 @EnumAudioDeviceInterfaces(%struct.TYPE_10__** @RootInfo)
  br label %19

19:                                               ; preds = %17, %4
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32*, i32** %7, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = call i32 @DPRINT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @DSERR_INVALIDPARAM, align 4
  store i32 %27, i32* %5, align 4
  br label %159

28:                                               ; preds = %22, %19
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @IDS_PRIMARY_PLAYBACK_DEVICE, align 4
  store i32 %32, i32* %10, align 4
  br label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @IDS_PRIMARY_RECORD_DEVICE, align 4
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** @RootInfo, align 8
  %37 = icmp ne %struct.TYPE_10__* %36, null
  br i1 %37, label %38, label %157

38:                                               ; preds = %35
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @DoDSoundCallback(i32* %39, i32* %40, i32* null, i32 %41, i32* null, i8* bitcast ([1 x i32]* @.str.1 to i8*), i32 %42)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @DS_OK, align 4
  store i32 %47, i32* %5, align 4
  br label %159

48:                                               ; preds = %38
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** @RootInfo, align 8
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %12, align 8
  br label %50

50:                                               ; preds = %153, %48
  %51 = load i64, i64* %9, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %99

53:                                               ; preds = %50
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = call i32 @IsEqualGUID(i32* %57, i32* @GUID_NULL)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %99, label %60

60:                                               ; preds = %53
  %61 = call i32 @RtlZeroMemory(%struct.TYPE_9__* %13, i32 8)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ULONG_MAX, align 8
  %68 = icmp ne i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @ASSERT(i32 %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 1
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 @waveOutGetDevCapsW(i32 %76, %struct.TYPE_9__* %13, i32 8)
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* @MAXPNAMELEN, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  store i32 0, i32* %83, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i64 @DoDSoundCallback(i32* %84, i32* %85, i32* %89, i32 0, i32* %91, i8* bitcast ([1 x i32]* @.str.1 to i8*), i32 %92)
  store i64 %93, i64* %11, align 8
  %94 = load i64, i64* %11, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %60
  %97 = load i32, i32* @DS_OK, align 4
  store i32 %97, i32* %5, align 4
  br label %159

98:                                               ; preds = %60
  br label %149

99:                                               ; preds = %53, %50
  %100 = load i64, i64* %9, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %148, label %102

102:                                              ; preds = %99
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = call i32 @IsEqualGUID(i32* %106, i32* @GUID_NULL)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %148, label %109

109:                                              ; preds = %102
  %110 = call i32 @RtlZeroMemory(%struct.TYPE_9__* %14, i32 8)
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @ULONG_MAX, align 8
  %117 = icmp ne i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @ASSERT(i32 %118)
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 0
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = call i32 @waveInGetDevCapsW(i32 %125, %struct.TYPE_9__* %14, i32 8)
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* @MAXPNAMELEN, align 4
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  store i32 0, i32* %132, align 4
  %133 = load i32*, i32** %6, align 8
  %134 = load i32*, i32** %7, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = call i64 @DoDSoundCallback(i32* %133, i32* %134, i32* %138, i32 0, i32* %140, i8* bitcast ([1 x i32]* @.str.1 to i8*), i32 %141)
  store i64 %142, i64* %11, align 8
  %143 = load i64, i64* %11, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %109
  %146 = load i32, i32* @DS_OK, align 4
  store i32 %146, i32* %5, align 4
  br label %159

147:                                              ; preds = %109
  br label %148

148:                                              ; preds = %147, %102, %99
  br label %149

149:                                              ; preds = %148, %98
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  store %struct.TYPE_10__* %152, %struct.TYPE_10__** %12, align 8
  br label %153

153:                                              ; preds = %149
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %155 = icmp ne %struct.TYPE_10__* %154, null
  br i1 %155, label %50, label %156

156:                                              ; preds = %153
  br label %157

157:                                              ; preds = %156, %35
  %158 = load i32, i32* @DS_OK, align 4
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %157, %145, %96, %46, %25
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @EnumAudioDeviceInterfaces(%struct.TYPE_10__**) #1

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i64 @DoDSoundCallback(i32*, i32*, i32*, i32, i32*, i8*, i32) #1

declare dso_local i32 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @waveOutGetDevCapsW(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @waveInGetDevCapsW(i32, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
