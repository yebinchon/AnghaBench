; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/maps/extr_windows_maps.c_add_map.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/maps/extr_windows_maps.c_add_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@R_PERM_X = common dso_local global i32 0, align 4
@R_PERM_RX = common dso_local global i32 0, align 4
@R_PERM_RWX = common dso_local global i32 0, align 4
@R_PERM_R = common dso_local global i32 0, align 4
@R_PERM_RW = common dso_local global i32 0, align 4
@R_PERM_W = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%-8s %s\00", align 1
@MEM_PRIVATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i64, i64, %struct.TYPE_4__*)* @add_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_map(i32* %0, i8* %1, i64 %2, i64 %3, %struct.TYPE_4__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %11, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %17 = call i8* @get_map_type(%struct.TYPE_4__* %16)
  store i8* %17, i8** %13, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %35 [
    i32 134, label %21
    i32 133, label %23
    i32 132, label %25
    i32 130, label %27
    i32 129, label %29
    i32 128, label %31
    i32 131, label %33
  ]

21:                                               ; preds = %5
  %22 = load i32, i32* @R_PERM_X, align 4
  store i32 %22, i32* %12, align 4
  br label %36

23:                                               ; preds = %5
  %24 = load i32, i32* @R_PERM_RX, align 4
  store i32 %24, i32* %12, align 4
  br label %36

25:                                               ; preds = %5
  %26 = load i32, i32* @R_PERM_RWX, align 4
  store i32 %26, i32* %12, align 4
  br label %36

27:                                               ; preds = %5
  %28 = load i32, i32* @R_PERM_R, align 4
  store i32 %28, i32* %12, align 4
  br label %36

29:                                               ; preds = %5
  %30 = load i32, i32* @R_PERM_RW, align 4
  store i32 %30, i32* %12, align 4
  br label %36

31:                                               ; preds = %5
  %32 = load i32, i32* @R_PERM_W, align 4
  store i32 %32, i32* %12, align 4
  br label %36

33:                                               ; preds = %5
  %34 = load i32, i32* @R_PERM_X, align 4
  store i32 %34, i32* %12, align 4
  br label %36

35:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %35, %33, %31, %29, %27, %25, %23, %21
  %37 = load i8*, i8** %13, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i8* @r_str_newf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %37, i8* %38)
  store i8* %39, i8** %14, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  store i32* null, i32** %6, align 8
  br label %67

43:                                               ; preds = %36
  %44 = load i8*, i8** %14, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MEM_PRIVATE, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32* @r_debug_map_new(i8* %44, i64 %45, i64 %48, i32 %49, i32 %55)
  store i32* %56, i32** %15, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = call i32 @free(i8* %57)
  %59 = load i32*, i32** %15, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %43
  %62 = load i32*, i32** %7, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = call i32 @r_list_append(i32* %62, i32* %63)
  br label %65

65:                                               ; preds = %61, %43
  %66 = load i32*, i32** %15, align 8
  store i32* %66, i32** %6, align 8
  br label %67

67:                                               ; preds = %65, %42
  %68 = load i32*, i32** %6, align 8
  ret i32* %68
}

declare dso_local i8* @get_map_type(%struct.TYPE_4__*) #1

declare dso_local i8* @r_str_newf(i8*, i8*, i8*) #1

declare dso_local i32* @r_debug_map_new(i8*, i64, i64, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_list_append(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
