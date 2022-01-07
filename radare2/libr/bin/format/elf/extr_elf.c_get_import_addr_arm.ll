; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/elf/extr_elf.c_get_import_addr_arm.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/elf/extr_elf.c_get_import_addr_arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ht_rel_t = type { i32 }
%struct.TYPE_3__ = type { i32 }

@UT32_MAX = common dso_local global i32 0, align 4
@REL_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Unsupported relocation type for imports %d\0A\00", align 1
@UT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ht_rel_t*, %struct.TYPE_3__*)* @get_import_addr_arm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_import_addr_arm(i32* %0, %struct.ht_rel_t* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ht_rel_t*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.ht_rel_t* %1, %struct.ht_rel_t** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @UT32_MAX, align 4
  store i32 %12, i32* %4, align 4
  br label %46

13:                                               ; preds = %3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @REL_TYPE, align 4
  switch i32 %17, label %42 [
    i32 128, label %18
    i32 129, label %34
  ]

18:                                               ; preds = %13
  %19 = load %struct.ht_rel_t*, %struct.ht_rel_t** %6, align 8
  %20 = getelementptr inbounds %struct.ht_rel_t, %struct.ht_rel_t* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 12
  %23 = add nsw i32 %22, 20
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %18
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %46

34:                                               ; preds = %13
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.ht_rel_t*, %struct.ht_rel_t** %6, align 8
  %37 = getelementptr inbounds %struct.ht_rel_t, %struct.ht_rel_t* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 16
  %40 = add nsw i32 %35, %39
  %41 = add nsw i32 %40, 32
  store i32 %41, i32* %4, align 4
  br label %46

42:                                               ; preds = %13
  %43 = load i32, i32* @REL_TYPE, align 4
  %44 = call i32 @bprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @UT64_MAX, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %34, %32, %11
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @bprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
