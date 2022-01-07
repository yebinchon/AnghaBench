; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_flag.c_flag_ordinals.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_flag.c_flag_ordinals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.rename_flag_t = type { i8*, i32, %struct.TYPE_3__* }

@rename_flag_ordinal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @flag_ordinals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flag_ordinals(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rename_flag_t, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @r_str_trim_ro(i8* %9)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @strdup(i8* %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @strchr(i8* %13, i8 signext 42)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i8*, i8** %7, align 8
  store i8 0, i8* %18, align 1
  br label %19

19:                                               ; preds = %17, %2
  %20 = getelementptr inbounds %struct.rename_flag_t, %struct.rename_flag_t* %8, i32 0, i32 0
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %20, align 8
  %22 = getelementptr inbounds %struct.rename_flag_t, %struct.rename_flag_t* %8, i32 0, i32 1
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.rename_flag_t, %struct.rename_flag_t* %8, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %23, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* @rename_flag_ordinal, align 4
  %30 = call i32 @r_flag_foreach_glob(i32 %27, i8* %28, i32 %29, %struct.rename_flag_t* %8)
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @free(i8* %31)
  ret void
}

declare dso_local i8* @r_str_trim_ro(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @r_flag_foreach_glob(i32, i8*, i32, %struct.rename_flag_t*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
