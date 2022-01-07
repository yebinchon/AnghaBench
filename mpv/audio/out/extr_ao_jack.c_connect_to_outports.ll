; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_jack.c_connect_to_outports.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_jack.c_connect_to_outports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.priv* }
%struct.priv = type { i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@JackPortIsInput = common dso_local global i32 0, align 4
@JackPortIsPhysical = common dso_local global i32 0, align 4
@JACK_DEFAULT_AUDIO_TYPE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"no ports to connect to\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"connecting failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*)* @connect_to_outports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_to_outports(%struct.ao* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ao*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.ao* %0, %struct.ao** %3, align 8
  %10 = load %struct.ao*, %struct.ao** %3, align 8
  %11 = getelementptr inbounds %struct.ao, %struct.ao* %10, i32 0, i32 0
  %12 = load %struct.priv*, %struct.priv** %11, align 8
  store %struct.priv* %12, %struct.priv** %4, align 8
  %13 = load %struct.priv*, %struct.priv** %4, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %1
  %20 = load %struct.priv*, %struct.priv** %4, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %19
  %30 = load %struct.priv*, %struct.priv** %4, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  br label %36

35:                                               ; preds = %19, %1
  br label %36

36:                                               ; preds = %35, %29
  %37 = phi i8* [ %34, %29 ], [ null, %35 ]
  store i8* %37, i8** %5, align 8
  store i8** null, i8*** %6, align 8
  %38 = load i32, i32* @JackPortIsInput, align 4
  store i32 %38, i32* %7, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @JackPortIsPhysical, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i8*, i8** @JACK_DEFAULT_AUDIO_TYPE, align 8
  store i8* %46, i8** %9, align 8
  %47 = load %struct.priv*, %struct.priv** %4, align 8
  %48 = getelementptr inbounds %struct.priv, %struct.priv* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i8** @jack_get_ports(i32 %49, i8* %50, i8* %51, i32 %52)
  store i8** %53, i8*** %6, align 8
  %54 = load i8**, i8*** %6, align 8
  %55 = icmp ne i8** %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %45
  %57 = load i8**, i8*** %6, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56, %45
  %62 = load %struct.ao*, %struct.ao** %3, align 8
  %63 = call i32 @MP_FATAL(%struct.ao* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %112

64:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %103, %64
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.priv*, %struct.priv** %4, align 8
  %68 = getelementptr inbounds %struct.priv, %struct.priv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load i8**, i8*** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br label %78

78:                                               ; preds = %71, %65
  %79 = phi i1 [ false, %65 ], [ %77, %71 ]
  br i1 %79, label %80, label %106

80:                                               ; preds = %78
  %81 = load %struct.priv*, %struct.priv** %4, align 8
  %82 = getelementptr inbounds %struct.priv, %struct.priv* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.priv*, %struct.priv** %4, align 8
  %85 = getelementptr inbounds %struct.priv, %struct.priv* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @jack_port_name(i32 %90)
  %92 = load i8**, i8*** %6, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = call i64 @jack_connect(i32 %83, i32 %91, i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %80
  %100 = load %struct.ao*, %struct.ao** %3, align 8
  %101 = call i32 @MP_FATAL(%struct.ao* %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %109

102:                                              ; preds = %80
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %65

106:                                              ; preds = %78
  %107 = load i8**, i8*** %6, align 8
  %108 = call i32 @free(i8** %107)
  store i32 0, i32* %2, align 4
  br label %113

109:                                              ; preds = %99
  %110 = load i8**, i8*** %6, align 8
  %111 = call i32 @free(i8** %110)
  br label %112

112:                                              ; preds = %109, %61
  store i32 -1, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %106
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i8** @jack_get_ports(i32, i8*, i8*, i32) #1

declare dso_local i32 @MP_FATAL(%struct.ao*, i8*) #1

declare dso_local i64 @jack_connect(i32, i32, i8*) #1

declare dso_local i32 @jack_port_name(i32) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
