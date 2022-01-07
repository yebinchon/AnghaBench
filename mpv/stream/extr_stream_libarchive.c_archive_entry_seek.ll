; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_libarchive.c_archive_entry_seek.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_libarchive.c_archive_entry_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, %struct.priv* }
%struct.priv = type { i32, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"possibly unsupported seeking - switching to reopening\0A\00", align 1
@STREAM_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"trying to reopen archive for performing seek\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"demuxer trying to seek beyond end of archive entry\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"end of archive entry reached while seeking\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64)* @archive_entry_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_entry_seek(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4096 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %15 = load %struct.priv*, %struct.priv** %14, align 8
  store %struct.priv* %15, %struct.priv** %6, align 8
  %16 = load %struct.priv*, %struct.priv** %6, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = icmp ne %struct.TYPE_10__* %18, null
  br i1 %19, label %20, label %56

20:                                               ; preds = %2
  %21 = load %struct.priv*, %struct.priv** %6, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %56, label %25

25:                                               ; preds = %20
  %26 = load %struct.priv*, %struct.priv** %6, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @uselocale(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.priv*, %struct.priv** %6, align 8
  %33 = getelementptr inbounds %struct.priv, %struct.priv* %32, i32 0, i32 2
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %5, align 8
  %38 = load i32, i32* @SEEK_SET, align 4
  %39 = call i32 @archive_seek_data(i32 %36, i64 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @uselocale(i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %181

45:                                               ; preds = %25
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = call i32 @MP_WARN(%struct.TYPE_9__* %46, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.priv*, %struct.priv** %6, align 8
  %49 = getelementptr inbounds %struct.priv, %struct.priv* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = call i64 @reopen_archive(%struct.TYPE_9__* %50)
  %52 = load i64, i64* @STREAM_OK, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 -1, i32* %3, align 4
  br label %181

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %20, %2
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %57, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = call i32 @MP_VERBOSE(%struct.TYPE_9__* %63, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = call i64 @reopen_archive(%struct.TYPE_9__* %65)
  %67 = load i64, i64* @STREAM_OK, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 -1, i32* %3, align 4
  br label %181

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %56
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %72, %75
  br i1 %76, label %77, label %180

77:                                               ; preds = %71
  %78 = load %struct.priv*, %struct.priv** %6, align 8
  %79 = getelementptr inbounds %struct.priv, %struct.priv* %78, i32 0, i32 2
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = icmp ne %struct.TYPE_10__* %80, null
  br i1 %81, label %88, label %82

82:                                               ; preds = %77
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %84 = call i64 @reopen_archive(%struct.TYPE_9__* %83)
  %85 = load i64, i64* @STREAM_OK, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 -1, i32* %3, align 4
  br label %181

88:                                               ; preds = %82, %77
  br label %89

89:                                               ; preds = %170, %88
  %90 = load i64, i64* %5, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %90, %93
  br i1 %94, label %95, label %179

95:                                               ; preds = %89
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @mp_cancel_test(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  store i32 -1, i32* %3, align 4
  br label %181

102:                                              ; preds = %95
  %103 = load i64, i64* %5, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %103, %106
  %108 = call i32 @MPMIN(i64 %107, i32 4096)
  store i32 %108, i32* %10, align 4
  %109 = load %struct.priv*, %struct.priv** %6, align 8
  %110 = getelementptr inbounds %struct.priv, %struct.priv* %109, i32 0, i32 2
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @uselocale(i32 %113)
  store i32 %114, i32* %11, align 4
  %115 = load %struct.priv*, %struct.priv** %6, align 8
  %116 = getelementptr inbounds %struct.priv, %struct.priv* %115, i32 0, i32 2
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @archive_read_data(i32 %119, i8* %120, i32 %121)
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp sle i32 %123, 0
  br i1 %124, label %125, label %170

125:                                              ; preds = %102
  %126 = load i32, i32* %12, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %125
  %129 = load i64, i64* %5, align 8
  %130 = load %struct.priv*, %struct.priv** %6, align 8
  %131 = getelementptr inbounds %struct.priv, %struct.priv* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp sgt i64 %129, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %136 = call i32 (%struct.TYPE_9__*, i8*, ...) @MP_ERR(%struct.TYPE_9__* %135, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %153

137:                                              ; preds = %128, %125
  %138 = load i32, i32* %12, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %142 = call i32 (%struct.TYPE_9__*, i8*, ...) @MP_ERR(%struct.TYPE_9__* %141, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %152

143:                                              ; preds = %137
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %145 = load %struct.priv*, %struct.priv** %6, align 8
  %146 = getelementptr inbounds %struct.priv, %struct.priv* %145, i32 0, i32 2
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @archive_error_string(i32 %149)
  %151 = call i32 (%struct.TYPE_9__*, i8*, ...) @MP_ERR(%struct.TYPE_9__* %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %143, %140
  br label %153

153:                                              ; preds = %152, %134
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @uselocale(i32 %154)
  %156 = load %struct.priv*, %struct.priv** %6, align 8
  %157 = getelementptr inbounds %struct.priv, %struct.priv* %156, i32 0, i32 2
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = load i32, i32* %12, align 4
  %160 = call i64 @mp_archive_check_fatal(%struct.TYPE_10__* %158, i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %153
  %163 = load %struct.priv*, %struct.priv** %6, align 8
  %164 = getelementptr inbounds %struct.priv, %struct.priv* %163, i32 0, i32 2
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = call i32 @mp_archive_free(%struct.TYPE_10__* %165)
  %167 = load %struct.priv*, %struct.priv** %6, align 8
  %168 = getelementptr inbounds %struct.priv, %struct.priv* %167, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %168, align 8
  br label %169

169:                                              ; preds = %162, %153
  store i32 -1, i32* %3, align 4
  br label %181

170:                                              ; preds = %102
  %171 = load i32, i32* %11, align 4
  %172 = call i32 @uselocale(i32 %171)
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, %174
  store i64 %178, i64* %176, align 8
  br label %89

179:                                              ; preds = %89
  br label %180

180:                                              ; preds = %179, %71
  store i32 1, i32* %3, align 4
  br label %181

181:                                              ; preds = %180, %169, %101, %87, %69, %54, %44
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @uselocale(i32) #1

declare dso_local i32 @archive_seek_data(i32, i64, i32) #1

declare dso_local i32 @MP_WARN(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @reopen_archive(%struct.TYPE_9__*) #1

declare dso_local i32 @MP_VERBOSE(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @mp_cancel_test(i32) #1

declare dso_local i32 @MPMIN(i64, i32) #1

declare dso_local i32 @archive_read_data(i32, i8*, i32) #1

declare dso_local i32 @MP_ERR(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @archive_error_string(i32) #1

declare dso_local i64 @mp_archive_check_fatal(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @mp_archive_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
