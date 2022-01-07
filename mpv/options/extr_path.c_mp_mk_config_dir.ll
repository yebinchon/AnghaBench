; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_path.c_mp_mk_config_dir.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_path.c_mp_mk_config_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_global = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_mk_config_dir(%struct.mpv_global* %0, i8* %1) #0 {
  %3 = alloca %struct.mpv_global*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.mpv_global* %0, %struct.mpv_global** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.mpv_global*, %struct.mpv_global** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i8* @mp_find_user_config_file(i32* null, %struct.mpv_global* %6, i8* %7)
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @mp_mkdirp(i8* %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @talloc_free(i8* %15)
  ret void
}

declare dso_local i8* @mp_find_user_config_file(i32*, %struct.mpv_global*, i8*) #1

declare dso_local i32 @mp_mkdirp(i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
