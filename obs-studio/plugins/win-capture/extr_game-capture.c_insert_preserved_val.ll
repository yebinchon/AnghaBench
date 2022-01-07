; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_insert_preserved_val.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_insert_preserved_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"[%s]: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @insert_preserved_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_preserved_val(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dstr, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %9 = bitcast %struct.dstr* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @build_window_strings(i8* %10, i8** %5, i8** %6, i8** %7)
  %12 = load i8*, i8** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @dstr_printf(%struct.dstr* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds %struct.dstr, %struct.dstr* %8, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @obs_property_list_insert_string(i32* %15, i32 1, i32 %17, i8* %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @obs_property_list_item_disable(i32* %20, i32 1, i32 1)
  %22 = call i32 @dstr_free(%struct.dstr* %8)
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @bfree(i8* %23)
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @bfree(i8* %25)
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @bfree(i8* %27)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @build_window_strings(i8*, i8**, i8**, i8**) #2

declare dso_local i32 @dstr_printf(%struct.dstr*, i8*, i8*, i8*) #2

declare dso_local i32 @obs_property_list_insert_string(i32*, i32, i32, i8*) #2

declare dso_local i32 @obs_property_list_item_disable(i32*, i32, i32) #2

declare dso_local i32 @dstr_free(%struct.dstr*) #2

declare dso_local i32 @bfree(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
