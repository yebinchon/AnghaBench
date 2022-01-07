; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeTILEGX-encoder.c_get_tilegx_spr_name.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeTILEGX-encoder.c_get_tilegx_spr_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tilegx_spr = type { i32, i8* }

@tilegx_sprs = common dso_local global i64 0, align 8
@tilegx_num_sprs = common dso_local global i32 0, align 4
@tilegx_spr_compare = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_tilegx_spr_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tilegx_spr, align 8
  %6 = alloca %struct.tilegx_spr*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = getelementptr inbounds %struct.tilegx_spr, %struct.tilegx_spr* %5, i32 0, i32 0
  store i32 %7, i32* %8, align 8
  %9 = bitcast %struct.tilegx_spr* %5 to i8*
  %10 = load i64, i64* @tilegx_sprs, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = load i32, i32* @tilegx_num_sprs, align 4
  %13 = load i32, i32* @tilegx_spr_compare, align 4
  %14 = call i8* @bsearch(i8* %9, i8* %11, i32 %12, i32 16, i32 %13)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %24

18:                                               ; preds = %1
  %19 = load i8*, i8** %4, align 8
  %20 = bitcast i8* %19 to %struct.tilegx_spr*
  store %struct.tilegx_spr* %20, %struct.tilegx_spr** %6, align 8
  %21 = load %struct.tilegx_spr*, %struct.tilegx_spr** %6, align 8
  %22 = getelementptr inbounds %struct.tilegx_spr, %struct.tilegx_spr* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %2, align 8
  br label %24

24:                                               ; preds = %18, %17
  %25 = load i8*, i8** %2, align 8
  ret i8* %25
}

declare dso_local i8* @bsearch(i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
