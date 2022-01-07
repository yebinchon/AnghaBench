; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_count_templates_scopes.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_count_templates_scopes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.demangle_component* }
%struct.TYPE_10__ = type { %struct.demangle_component* }
%struct.TYPE_9__ = type { %struct.demangle_component* }
%struct.TYPE_8__ = type { %struct.demangle_component* }
%struct.TYPE_7__ = type { %struct.demangle_component* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.demangle_component*)* @d_count_templates_scopes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d_count_templates_scopes(i32* %0, i32* %1, %struct.demangle_component* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.demangle_component*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.demangle_component* %2, %struct.demangle_component** %6, align 8
  %7 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %8 = icmp eq %struct.demangle_component* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %85

10:                                               ; preds = %3
  %11 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %12 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %85 [
    i32 173, label %14
    i32 152, label %14
    i32 187, label %14
    i32 156, label %14
    i32 204, label %14
    i32 168, label %14
    i32 202, label %14
    i32 169, label %14
    i32 136, label %14
    i32 154, label %15
    i32 163, label %19
    i32 158, label %19
    i32 164, label %30
    i32 174, label %30
    i32 141, label %30
    i32 129, label %30
    i32 128, label %30
    i32 197, label %30
    i32 140, label %30
    i32 138, label %30
    i32 139, label %30
    i32 150, label %30
    i32 132, label %30
    i32 194, label %30
    i32 179, label %30
    i32 183, label %30
    i32 149, label %30
    i32 148, label %30
    i32 161, label %30
    i32 182, label %30
    i32 160, label %30
    i32 131, label %30
    i32 198, label %30
    i32 159, label %30
    i32 130, label %30
    i32 196, label %30
    i32 162, label %30
    i32 157, label %30
    i32 145, label %30
    i32 172, label %30
    i32 151, label %30
    i32 133, label %30
    i32 166, label %30
    i32 200, label %30
    i32 181, label %30
    i32 134, label %30
    i32 186, label %30
    i32 207, label %30
    i32 165, label %30
    i32 135, label %30
    i32 208, label %30
    i32 153, label %30
    i32 147, label %30
    i32 180, label %30
    i32 203, label %30
    i32 195, label %30
    i32 170, label %30
    i32 137, label %30
    i32 206, label %30
    i32 205, label %30
    i32 144, label %30
    i32 143, label %30
    i32 142, label %30
    i32 176, label %30
    i32 175, label %30
    i32 178, label %30
    i32 199, label %30
    i32 192, label %30
    i32 146, label %30
    i32 171, label %30
    i32 167, label %30
    i32 155, label %30
    i32 201, label %30
    i32 193, label %40
    i32 190, label %48
    i32 189, label %56
    i32 188, label %64
    i32 185, label %72
    i32 184, label %72
    i32 177, label %77
    i32 191, label %77
  ]

14:                                               ; preds = %10, %10, %10, %10, %10, %10, %10, %10, %10
  br label %85

15:                                               ; preds = %10
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  br label %31

19:                                               ; preds = %10, %10
  %20 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %21 = call %struct.demangle_component* @d_left(%struct.demangle_component* %20)
  %22 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 152
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %25, %19
  br label %31

30:                                               ; preds = %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10
  br label %31

31:                                               ; preds = %30, %29, %15
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %35 = call %struct.demangle_component* @d_left(%struct.demangle_component* %34)
  call void @d_count_templates_scopes(i32* %32, i32* %33, %struct.demangle_component* %35)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %39 = call %struct.demangle_component* @d_right(%struct.demangle_component* %38)
  call void @d_count_templates_scopes(i32* %36, i32* %37, %struct.demangle_component* %39)
  br label %85

40:                                               ; preds = %10
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %44 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.demangle_component*, %struct.demangle_component** %46, align 8
  call void @d_count_templates_scopes(i32* %41, i32* %42, %struct.demangle_component* %47)
  br label %85

48:                                               ; preds = %10
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %52 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.demangle_component*, %struct.demangle_component** %54, align 8
  call void @d_count_templates_scopes(i32* %49, i32* %50, %struct.demangle_component* %55)
  br label %85

56:                                               ; preds = %10
  %57 = load i32*, i32** %4, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %60 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load %struct.demangle_component*, %struct.demangle_component** %62, align 8
  call void @d_count_templates_scopes(i32* %57, i32* %58, %struct.demangle_component* %63)
  br label %85

64:                                               ; preds = %10
  %65 = load i32*, i32** %4, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %68 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load %struct.demangle_component*, %struct.demangle_component** %70, align 8
  call void @d_count_templates_scopes(i32* %65, i32* %66, %struct.demangle_component* %71)
  br label %85

72:                                               ; preds = %10, %10
  %73 = load i32*, i32** %4, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %76 = call %struct.demangle_component* @d_left(%struct.demangle_component* %75)
  call void @d_count_templates_scopes(i32* %73, i32* %74, %struct.demangle_component* %76)
  br label %85

77:                                               ; preds = %10, %10
  %78 = load i32*, i32** %4, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %81 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load %struct.demangle_component*, %struct.demangle_component** %83, align 8
  call void @d_count_templates_scopes(i32* %78, i32* %79, %struct.demangle_component* %84)
  br label %85

85:                                               ; preds = %9, %10, %77, %72, %64, %56, %48, %40, %31, %14
  ret void
}

declare dso_local %struct.demangle_component* @d_left(%struct.demangle_component*) #1

declare dso_local %struct.demangle_component* @d_right(%struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
