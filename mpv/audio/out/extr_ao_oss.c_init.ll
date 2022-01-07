; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_oss.c_init.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_oss.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, %struct.priv* }
%struct.priv = type { i8*, i32, i32, i32, i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Can't open mixer device %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@SOUND_MIXER_READ_DEVMASK = common dso_local global i32 0, align 4
@SOUND_MIXER_NRDEVICES = common dso_local global i32 0, align 4
@mixer_channels = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"Audio card mixer does not have channel '%s', using default.\0A\00", align 1
@SOUND_MIXER_PCM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"using '%s' mixer device\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"using '%s' mixer channel\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Out of memory, or broken outburst size.\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Your OSS audio driver DOES NOT support poll().\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*)* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init(%struct.ao* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ao*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.ao* %0, %struct.ao** %3, align 8
  %10 = load %struct.ao*, %struct.ao** %3, align 8
  %11 = getelementptr inbounds %struct.ao, %struct.ao* %10, i32 0, i32 1
  %12 = load %struct.priv*, %struct.priv** %11, align 8
  store %struct.priv* %12, %struct.priv** %4, align 8
  store i8* null, i8** %5, align 8
  %13 = load %struct.priv*, %struct.priv** %4, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.priv*, %struct.priv** %4, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.priv*, %struct.priv** %4, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %5, align 8
  br label %29

29:                                               ; preds = %25, %17, %1
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %96

32:                                               ; preds = %29
  %33 = load %struct.priv*, %struct.priv** %4, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @O_RDONLY, align 4
  %37 = call i32 @open(i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.ao*, %struct.ao** %3, align 8
  %41 = load %struct.priv*, %struct.priv** %4, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @errno, align 4
  %45 = call i32 @mp_strerror(i32 %44)
  %46 = call i32 (%struct.ao*, i8*, ...) @MP_ERR(%struct.ao* %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %45)
  br label %95

47:                                               ; preds = %32
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @SOUND_MIXER_READ_DEVMASK, align 4
  %50 = call i32 @ioctl(i32 %48, i32 %49, i32* %7)
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @close(i32 %51)
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %83, %47
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %86

57:                                               ; preds = %53
  %58 = load i32*, i32** @mixer_channels, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @strcasecmp(i32 %62, i8* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = shl i32 1, %68
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load %struct.ao*, %struct.ao** %3, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 (%struct.ao*, i8*, ...) @MP_ERR(%struct.ao* %73, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  %76 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %86

78:                                               ; preds = %66
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.priv*, %struct.priv** %4, align 8
  %81 = getelementptr inbounds %struct.priv, %struct.priv* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  br label %86

82:                                               ; preds = %57
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %53

86:                                               ; preds = %78, %72, %53
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load %struct.ao*, %struct.ao** %3, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = call i32 (%struct.ao*, i8*, ...) @MP_ERR(%struct.ao* %91, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %90, %86
  br label %95

95:                                               ; preds = %94, %39
  br label %100

96:                                               ; preds = %29
  %97 = load i32, i32* @SOUND_MIXER_PCM, align 4
  %98 = load %struct.priv*, %struct.priv** %4, align 8
  %99 = getelementptr inbounds %struct.priv, %struct.priv* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %96, %95
  %101 = load %struct.ao*, %struct.ao** %3, align 8
  %102 = load %struct.priv*, %struct.priv** %4, align 8
  %103 = getelementptr inbounds %struct.priv, %struct.priv* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @MP_VERBOSE(%struct.ao* %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  %106 = load %struct.ao*, %struct.ao** %3, align 8
  %107 = load i32*, i32** @mixer_channels, align 8
  %108 = load %struct.priv*, %struct.priv** %4, align 8
  %109 = getelementptr inbounds %struct.priv, %struct.priv* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %107, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @MP_VERBOSE(%struct.ao* %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load %struct.ao*, %struct.ao** %3, align 8
  %116 = getelementptr inbounds %struct.ao, %struct.ao* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @af_fmt_from_planar(i32 %117)
  %119 = load %struct.ao*, %struct.ao** %3, align 8
  %120 = getelementptr inbounds %struct.ao, %struct.ao* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.ao*, %struct.ao** %3, align 8
  %122 = call i64 @reopen_device(%struct.ao* %121, i32 1)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %100
  br label %187

125:                                              ; preds = %100
  %126 = load %struct.priv*, %struct.priv** %4, align 8
  %127 = getelementptr inbounds %struct.priv, %struct.priv* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %186

130:                                              ; preds = %125
  %131 = load %struct.priv*, %struct.priv** %4, align 8
  %132 = getelementptr inbounds %struct.priv, %struct.priv* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = call i8* @malloc(i32 %133)
  store i8* %134, i8** %9, align 8
  %135 = load i8*, i8** %9, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %130
  %138 = load %struct.ao*, %struct.ao** %3, align 8
  %139 = call i32 (%struct.ao*, i8*, ...) @MP_ERR(%struct.ao* %138, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %187

140:                                              ; preds = %130
  %141 = load %struct.priv*, %struct.priv** %4, align 8
  %142 = getelementptr inbounds %struct.priv, %struct.priv* %141, i32 0, i32 2
  store i32 0, i32* %142, align 4
  %143 = load i8*, i8** %9, align 8
  %144 = load %struct.priv*, %struct.priv** %4, align 8
  %145 = getelementptr inbounds %struct.priv, %struct.priv* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @memset(i8* %143, i32 0, i32 %146)
  br label %148

148:                                              ; preds = %159, %140
  %149 = load %struct.priv*, %struct.priv** %4, align 8
  %150 = getelementptr inbounds %struct.priv, %struct.priv* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = icmp slt i32 %151, 262144
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load %struct.ao*, %struct.ao** %3, align 8
  %155 = call i64 @device_writable(%struct.ao* %154)
  %156 = icmp sgt i64 %155, 0
  br label %157

157:                                              ; preds = %153, %148
  %158 = phi i1 [ false, %148 ], [ %156, %153 ]
  br i1 %158, label %159, label %175

159:                                              ; preds = %157
  %160 = load %struct.priv*, %struct.priv** %4, align 8
  %161 = getelementptr inbounds %struct.priv, %struct.priv* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = load i8*, i8** %9, align 8
  %164 = load %struct.priv*, %struct.priv** %4, align 8
  %165 = getelementptr inbounds %struct.priv, %struct.priv* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @write(i32 %162, i8* %163, i32 %166)
  %168 = load %struct.priv*, %struct.priv** %4, align 8
  %169 = getelementptr inbounds %struct.priv, %struct.priv* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.priv*, %struct.priv** %4, align 8
  %172 = getelementptr inbounds %struct.priv, %struct.priv* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, %170
  store i32 %174, i32* %172, align 4
  br label %148

175:                                              ; preds = %157
  %176 = load i8*, i8** %9, align 8
  %177 = call i32 @free(i8* %176)
  %178 = load %struct.priv*, %struct.priv** %4, align 8
  %179 = getelementptr inbounds %struct.priv, %struct.priv* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %175
  %183 = load %struct.ao*, %struct.ao** %3, align 8
  %184 = call i32 (%struct.ao*, i8*, ...) @MP_ERR(%struct.ao* %183, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %187

185:                                              ; preds = %175
  br label %186

186:                                              ; preds = %185, %125
  store i32 0, i32* %2, align 4
  br label %190

187:                                              ; preds = %182, %137, %124
  %188 = load %struct.ao*, %struct.ao** %3, align 8
  %189 = call i32 @uninit(%struct.ao* %188)
  store i32 -1, i32* %2, align 4
  br label %190

190:                                              ; preds = %187, %186
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @MP_ERR(%struct.ao*, i8*, ...) #1

declare dso_local i32 @mp_strerror(i32) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @MP_VERBOSE(%struct.ao*, i8*, i32) #1

declare dso_local i32 @af_fmt_from_planar(i32) #1

declare dso_local i64 @reopen_device(%struct.ao*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @device_writable(%struct.ao*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @uninit(%struct.ao*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
