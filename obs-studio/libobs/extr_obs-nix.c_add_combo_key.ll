; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-nix.c_add_combo_key.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-nix.c_add_combo_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c" + \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.dstr*)* @add_combo_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_combo_key(i32 %0, %struct.dstr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dstr*, align 8
  %5 = alloca %struct.dstr, align 4
  store i32 %0, i32* %3, align 4
  store %struct.dstr* %1, %struct.dstr** %4, align 8
  %6 = bitcast %struct.dstr* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 4, i1 false)
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @obs_key_to_str(i32 %7, %struct.dstr* %5)
  %9 = call i32 @dstr_is_empty(%struct.dstr* %5)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = load %struct.dstr*, %struct.dstr** %4, align 8
  %13 = call i32 @dstr_is_empty(%struct.dstr* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load %struct.dstr*, %struct.dstr** %4, align 8
  %17 = call i32 @dstr_cat(%struct.dstr* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %11
  %19 = load %struct.dstr*, %struct.dstr** %4, align 8
  %20 = call i32 @dstr_cat_dstr(%struct.dstr* %19, %struct.dstr* %5)
  br label %21

21:                                               ; preds = %18, %2
  %22 = call i32 @dstr_free(%struct.dstr* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @obs_key_to_str(i32, %struct.dstr*) #2

declare dso_local i32 @dstr_is_empty(%struct.dstr*) #2

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #2

declare dso_local i32 @dstr_cat_dstr(%struct.dstr*, %struct.dstr*) #2

declare dso_local i32 @dstr_free(%struct.dstr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
