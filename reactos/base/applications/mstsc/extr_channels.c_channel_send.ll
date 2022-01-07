; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_channels.c_channel_send.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_channels.c_channel_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32, i32 }

@channel_hdr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"channel_send, length = %d\0A\00", align 1
@CHANNEL_CHUNK_LENGTH = common dso_local global i32 0, align 4
@CHANNEL_FLAG_FIRST = common dso_local global i64 0, align 8
@CHANNEL_FLAG_LAST = common dso_local global i64 0, align 8
@CHANNEL_OPTION_SHOW_PROTOCOL = common dso_local global i32 0, align 4
@CHANNEL_FLAG_SHOW_PROTOCOL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Sending %d bytes with FLAG_FIRST\0A\00", align 1
@g_encryption = common dso_local global i64 0, align 8
@SEC_ENCRYPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Sending %d bytes with flags %d\0A\00", align 1
@SCARD_LOCK_CHANNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @channel_send(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = load i32, i32* @channel_hdr, align 4
  %12 = call i32 @s_pop_layer(%struct.TYPE_12__* %10, i32 %11)
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = sub nsw i64 %19, 8
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @DEBUG_CHANNEL(i8* %22)
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* @CHANNEL_CHUNK_LENGTH, align 4
  %26 = call i64 @MIN(i64 %24, i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = sub nsw i64 %27, %28
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load i64, i64* @CHANNEL_FLAG_FIRST, align 8
  %34 = load i64, i64* @CHANNEL_FLAG_LAST, align 8
  %35 = or i64 %33, %34
  br label %38

36:                                               ; preds = %2
  %37 = load i64, i64* @CHANNEL_FLAG_FIRST, align 8
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i64 [ %35, %32 ], [ %37, %36 ]
  store i64 %39, i64* %6, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CHANNEL_OPTION_SHOW_PROTOCOL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i64, i64* @CHANNEL_FLAG_SHOW_PROTOCOL, align 8
  %48 = load i64, i64* %6, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %6, align 8
  br label %50

50:                                               ; preds = %46, %38
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @out_uint32_le(%struct.TYPE_12__* %51, i64 %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @out_uint32_le(%struct.TYPE_12__* %54, i64 %55)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = add nsw i64 %59, %60
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = inttoptr i64 %61 to i32*
  store i32* %64, i32** %9, align 8
  %65 = load i64, i64* %7, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @DEBUG_CHANNEL(i8* %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = load i64, i64* @g_encryption, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %50
  %72 = load i32, i32* @SEC_ENCRYPT, align 4
  br label %74

73:                                               ; preds = %50
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ]
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @sec_send_to_channel(%struct.TYPE_12__* %68, i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %141, %74
  %81 = load i64, i64* %8, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %150

83:                                               ; preds = %80
  %84 = load i64, i64* %8, align 8
  %85 = load i32, i32* @CHANNEL_CHUNK_LENGTH, align 4
  %86 = call i64 @MIN(i64 %84, i32 %85)
  store i64 %86, i64* %7, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = sub nsw i64 %88, %87
  store i64 %89, i64* %8, align 8
  %90 = load i64, i64* %8, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load i64, i64* @CHANNEL_FLAG_LAST, align 8
  br label %95

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94, %92
  %96 = phi i64 [ %93, %92 ], [ 0, %94 ]
  store i64 %96, i64* %6, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @CHANNEL_OPTION_SHOW_PROTOCOL, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load i64, i64* @CHANNEL_FLAG_SHOW_PROTOCOL, align 8
  %105 = load i64, i64* %6, align 8
  %106 = or i64 %105, %104
  store i64 %106, i64* %6, align 8
  br label %107

107:                                              ; preds = %103, %95
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* %6, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = call i32 @DEBUG_CHANNEL(i8* %110)
  %112 = load i64, i64* @g_encryption, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32, i32* @SEC_ENCRYPT, align 4
  br label %117

116:                                              ; preds = %107
  br label %117

117:                                              ; preds = %116, %114
  %118 = phi i32 [ %115, %114 ], [ 0, %116 ]
  %119 = load i64, i64* %7, align 8
  %120 = add nsw i64 %119, 8
  %121 = trunc i64 %120 to i32
  %122 = call %struct.TYPE_12__* @sec_init(i32 %118, i32 %121)
  store %struct.TYPE_12__* %122, %struct.TYPE_12__** %3, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %124 = load i64, i64* %5, align 8
  %125 = call i32 @out_uint32_le(%struct.TYPE_12__* %123, i64 %124)
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %127 = load i64, i64* %6, align 8
  %128 = call i32 @out_uint32_le(%struct.TYPE_12__* %126, i64 %127)
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %130 = load i32*, i32** %9, align 8
  %131 = load i64, i64* %7, align 8
  %132 = call i32 @out_uint8p(%struct.TYPE_12__* %129, i32* %130, i64 %131)
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %134 = call i32 @s_mark_end(%struct.TYPE_12__* %133)
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %136 = load i64, i64* @g_encryption, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %117
  %139 = load i32, i32* @SEC_ENCRYPT, align 4
  br label %141

140:                                              ; preds = %117
  br label %141

141:                                              ; preds = %140, %138
  %142 = phi i32 [ %139, %138 ], [ 0, %140 ]
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @sec_send_to_channel(%struct.TYPE_12__* %135, i32 %142, i32 %145)
  %147 = load i64, i64* %7, align 8
  %148 = load i32*, i32** %9, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 %147
  store i32* %149, i32** %9, align 8
  br label %80

150:                                              ; preds = %80
  ret void
}

declare dso_local i32 @s_pop_layer(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @DEBUG_CHANNEL(i8*) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @out_uint32_le(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @sec_send_to_channel(%struct.TYPE_12__*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @sec_init(i32, i32) #1

declare dso_local i32 @out_uint8p(%struct.TYPE_12__*, i32*, i64) #1

declare dso_local i32 @s_mark_end(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
