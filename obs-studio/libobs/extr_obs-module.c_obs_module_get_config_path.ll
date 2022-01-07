; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-module.c_obs_module_get_config_path.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-module.c_obs_module_get_config_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8* }
%struct.dstr = type { i8*, i32 }

@obs = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @obs_module_get_config_path(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dstr, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = bitcast %struct.dstr* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 16, i1 false)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @obs, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dstr_copy(%struct.dstr* %5, i32 %9)
  %11 = call i32 @dstr_is_empty(%struct.dstr* %5)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = call signext i8 @dstr_end(%struct.dstr* %5)
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 47
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @dstr_cat_ch(%struct.dstr* %5, i8 signext 47)
  br label %19

19:                                               ; preds = %17, %13, %2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @dstr_cat(%struct.dstr* %5, i8* %22)
  %24 = call i32 @dstr_cat_ch(%struct.dstr* %5, i8 signext 47)
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @dstr_cat(%struct.dstr* %5, i8* %25)
  %27 = getelementptr inbounds %struct.dstr, %struct.dstr* %5, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  ret i8* %28
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dstr_copy(%struct.dstr*, i32) #2

declare dso_local i32 @dstr_is_empty(%struct.dstr*) #2

declare dso_local signext i8 @dstr_end(%struct.dstr*) #2

declare dso_local i32 @dstr_cat_ch(%struct.dstr*, i8 signext) #2

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
