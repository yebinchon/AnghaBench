; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_jack.c_init.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_jack.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.TYPE_5__, i32, i32, i32, %struct.priv* }
%struct.TYPE_5__ = type { i32 }
%struct.priv = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.mp_chmap_sel = type { i32 }

@ao_jack_conf = common dso_local global i32 0, align 4
@AF_FORMAT_FLOATP = common dso_local global i32 0, align 4
@JackNullOption = common dso_local global i32 0, align 4
@JackNoStartServer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"cannot open server\0A\00", align 1
@process = common dso_local global i32 0, align 4
@buffer_size_cb = common dso_local global i32 0, align 4
@graph_order_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*)* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init(%struct.ao* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ao*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.mp_chmap_sel, align 4
  %6 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %3, align 8
  %7 = load %struct.ao*, %struct.ao** %3, align 8
  %8 = getelementptr inbounds %struct.ao, %struct.ao* %7, i32 0, i32 4
  %9 = load %struct.priv*, %struct.priv** %8, align 8
  store %struct.priv* %9, %struct.priv** %4, align 8
  %10 = bitcast %struct.mp_chmap_sel* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load %struct.ao*, %struct.ao** %3, align 8
  %12 = load %struct.ao*, %struct.ao** %3, align 8
  %13 = getelementptr inbounds %struct.ao, %struct.ao* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_4__* @mp_get_config_group(%struct.ao* %11, i32 %14, i32* @ao_jack_conf)
  %16 = load %struct.priv*, %struct.priv** %4, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 2
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %17, align 8
  %18 = load i32, i32* @AF_FORMAT_FLOATP, align 4
  %19 = load %struct.ao*, %struct.ao** %3, align 8
  %20 = getelementptr inbounds %struct.ao, %struct.ao* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.priv*, %struct.priv** %4, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %28 [
    i32 0, label %26
  ]

26:                                               ; preds = %1
  %27 = call i32 @mp_chmap_sel_add_waveext(%struct.mp_chmap_sel* %5)
  br label %30

28:                                               ; preds = %1
  %29 = call i32 @mp_chmap_sel_add_any(%struct.mp_chmap_sel* %5)
  br label %30

30:                                               ; preds = %28, %26
  %31 = load %struct.ao*, %struct.ao** %3, align 8
  %32 = load %struct.ao*, %struct.ao** %3, align 8
  %33 = getelementptr inbounds %struct.ao, %struct.ao* %32, i32 0, i32 0
  %34 = call i32 @ao_chmap_sel_adjust(%struct.ao* %31, %struct.mp_chmap_sel* %5, %struct.TYPE_5__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %117

37:                                               ; preds = %30
  %38 = load i32, i32* @JackNullOption, align 4
  store i32 %38, i32* %6, align 4
  %39 = load %struct.priv*, %struct.priv** %4, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @JackNoStartServer, align 4
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %45, %37
  %50 = load %struct.priv*, %struct.priv** %4, align 8
  %51 = getelementptr inbounds %struct.priv, %struct.priv* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @jack_client_open(i32 %54, i32 %55, i32* null)
  %57 = load %struct.priv*, %struct.priv** %4, align 8
  %58 = getelementptr inbounds %struct.priv, %struct.priv* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.priv*, %struct.priv** %4, align 8
  %60 = getelementptr inbounds %struct.priv, %struct.priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %49
  %64 = load %struct.ao*, %struct.ao** %3, align 8
  %65 = call i32 @MP_FATAL(%struct.ao* %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %116

66:                                               ; preds = %49
  %67 = load %struct.ao*, %struct.ao** %3, align 8
  %68 = load %struct.ao*, %struct.ao** %3, align 8
  %69 = getelementptr inbounds %struct.ao, %struct.ao* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @create_ports(%struct.ao* %67, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %111

75:                                               ; preds = %66
  %76 = load %struct.priv*, %struct.priv** %4, align 8
  %77 = getelementptr inbounds %struct.priv, %struct.priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @process, align 4
  %80 = load %struct.ao*, %struct.ao** %3, align 8
  %81 = call i32 @jack_set_process_callback(i32 %78, i32 %79, %struct.ao* %80)
  %82 = load %struct.priv*, %struct.priv** %4, align 8
  %83 = getelementptr inbounds %struct.priv, %struct.priv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @jack_get_sample_rate(i32 %84)
  %86 = load %struct.ao*, %struct.ao** %3, align 8
  %87 = getelementptr inbounds %struct.ao, %struct.ao* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.priv*, %struct.priv** %4, align 8
  %89 = getelementptr inbounds %struct.priv, %struct.priv* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @buffer_size_cb, align 4
  %92 = load %struct.ao*, %struct.ao** %3, align 8
  %93 = call i32 @jack_set_buffer_size_callback(i32 %90, i32 %91, %struct.ao* %92)
  %94 = load %struct.priv*, %struct.priv** %4, align 8
  %95 = getelementptr inbounds %struct.priv, %struct.priv* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @graph_order_cb, align 4
  %98 = load %struct.ao*, %struct.ao** %3, align 8
  %99 = call i32 @jack_set_graph_order_callback(i32 %96, i32 %97, %struct.ao* %98)
  %100 = load %struct.ao*, %struct.ao** %3, align 8
  %101 = load %struct.ao*, %struct.ao** %3, align 8
  %102 = getelementptr inbounds %struct.ao, %struct.ao* %101, i32 0, i32 0
  %103 = load %struct.priv*, %struct.priv** %4, align 8
  %104 = getelementptr inbounds %struct.priv, %struct.priv* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ao_chmap_sel_get_def(%struct.ao* %100, %struct.mp_chmap_sel* %5, %struct.TYPE_5__* %102, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %75
  br label %110

109:                                              ; preds = %75
  store i32 0, i32* %2, align 4
  br label %118

110:                                              ; preds = %108
  br label %111

111:                                              ; preds = %110, %74
  %112 = load %struct.priv*, %struct.priv** %4, align 8
  %113 = getelementptr inbounds %struct.priv, %struct.priv* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @jack_client_close(i32 %114)
  br label %116

116:                                              ; preds = %111, %63
  br label %117

117:                                              ; preds = %116, %36
  store i32 -1, i32* %2, align 4
  br label %118

118:                                              ; preds = %117, %109
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_4__* @mp_get_config_group(%struct.ao*, i32, i32*) #2

declare dso_local i32 @mp_chmap_sel_add_waveext(%struct.mp_chmap_sel*) #2

declare dso_local i32 @mp_chmap_sel_add_any(%struct.mp_chmap_sel*) #2

declare dso_local i32 @ao_chmap_sel_adjust(%struct.ao*, %struct.mp_chmap_sel*, %struct.TYPE_5__*) #2

declare dso_local i32 @jack_client_open(i32, i32, i32*) #2

declare dso_local i32 @MP_FATAL(%struct.ao*, i8*) #2

declare dso_local i64 @create_ports(%struct.ao*, i32) #2

declare dso_local i32 @jack_set_process_callback(i32, i32, %struct.ao*) #2

declare dso_local i32 @jack_get_sample_rate(i32) #2

declare dso_local i32 @jack_set_buffer_size_callback(i32, i32, %struct.ao*) #2

declare dso_local i32 @jack_set_graph_order_callback(i32, i32, %struct.ao*) #2

declare dso_local i32 @ao_chmap_sel_get_def(%struct.ao*, %struct.mp_chmap_sel*, %struct.TYPE_5__*, i32) #2

declare dso_local i32 @jack_client_close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
