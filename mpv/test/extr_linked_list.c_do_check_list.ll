; ModuleID = '/home/carl/AnghaBench/mpv/test/extr_linked_list.c_do_check_list.c'
source_filename = "/home/carl/AnghaBench/mpv/test/extr_linked_list.c_do_check_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_list = type { %struct.list_item*, %struct.list_item* }
%struct.list_item = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.list_item*, %struct.list_item* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.the_list*, i32*, i32)* @do_check_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_check_list(%struct.the_list* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.the_list*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.list_item*, align 8
  store %struct.the_list* %0, %struct.the_list** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.the_list*, %struct.the_list** %5, align 8
  %10 = getelementptr inbounds %struct.the_list, %struct.the_list* %9, i32 0, i32 1
  %11 = load %struct.list_item*, %struct.list_item** %10, align 8
  %12 = icmp ne %struct.list_item* %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %3
  %14 = load %struct.the_list*, %struct.the_list** %5, align 8
  %15 = getelementptr inbounds %struct.the_list, %struct.the_list* %14, i32 0, i32 0
  %16 = load %struct.list_item*, %struct.list_item** %15, align 8
  %17 = icmp ne %struct.list_item* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert_true(i32 %19)
  br label %21

21:                                               ; preds = %13, %3
  %22 = load %struct.the_list*, %struct.the_list** %5, align 8
  %23 = getelementptr inbounds %struct.the_list, %struct.the_list* %22, i32 0, i32 0
  %24 = load %struct.list_item*, %struct.list_item** %23, align 8
  %25 = icmp ne %struct.list_item* %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = load %struct.the_list*, %struct.the_list** %5, align 8
  %28 = getelementptr inbounds %struct.the_list, %struct.the_list* %27, i32 0, i32 1
  %29 = load %struct.list_item*, %struct.list_item** %28, align 8
  %30 = icmp ne %struct.list_item* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert_true(i32 %32)
  br label %34

34:                                               ; preds = %26, %21
  %35 = load %struct.the_list*, %struct.the_list** %5, align 8
  %36 = getelementptr inbounds %struct.the_list, %struct.the_list* %35, i32 0, i32 1
  %37 = load %struct.list_item*, %struct.list_item** %36, align 8
  store %struct.list_item* %37, %struct.list_item** %8, align 8
  br label %38

38:                                               ; preds = %125, %34
  %39 = load %struct.list_item*, %struct.list_item** %8, align 8
  %40 = icmp ne %struct.list_item* %39, null
  br i1 %40, label %41, label %130

41:                                               ; preds = %38
  %42 = load %struct.list_item*, %struct.list_item** %8, align 8
  %43 = getelementptr inbounds %struct.list_item, %struct.list_item* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.list_item*, %struct.list_item** %44, align 8
  %46 = icmp ne %struct.list_item* %45, null
  br i1 %46, label %47, label %66

47:                                               ; preds = %41
  %48 = load %struct.list_item*, %struct.list_item** %8, align 8
  %49 = getelementptr inbounds %struct.list_item, %struct.list_item* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.list_item*, %struct.list_item** %50, align 8
  %52 = getelementptr inbounds %struct.list_item, %struct.list_item* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load %struct.list_item*, %struct.list_item** %53, align 8
  %55 = load %struct.list_item*, %struct.list_item** %8, align 8
  %56 = icmp eq %struct.list_item* %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert_true(i32 %57)
  %59 = load %struct.the_list*, %struct.the_list** %5, align 8
  %60 = getelementptr inbounds %struct.the_list, %struct.the_list* %59, i32 0, i32 1
  %61 = load %struct.list_item*, %struct.list_item** %60, align 8
  %62 = load %struct.list_item*, %struct.list_item** %8, align 8
  %63 = icmp ne %struct.list_item* %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert_true(i32 %64)
  br label %74

66:                                               ; preds = %41
  %67 = load %struct.the_list*, %struct.the_list** %5, align 8
  %68 = getelementptr inbounds %struct.the_list, %struct.the_list* %67, i32 0, i32 1
  %69 = load %struct.list_item*, %struct.list_item** %68, align 8
  %70 = load %struct.list_item*, %struct.list_item** %8, align 8
  %71 = icmp eq %struct.list_item* %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert_true(i32 %72)
  br label %74

74:                                               ; preds = %66, %47
  %75 = load %struct.list_item*, %struct.list_item** %8, align 8
  %76 = getelementptr inbounds %struct.list_item, %struct.list_item* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load %struct.list_item*, %struct.list_item** %77, align 8
  %79 = icmp ne %struct.list_item* %78, null
  br i1 %79, label %80, label %99

80:                                               ; preds = %74
  %81 = load %struct.list_item*, %struct.list_item** %8, align 8
  %82 = getelementptr inbounds %struct.list_item, %struct.list_item* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load %struct.list_item*, %struct.list_item** %83, align 8
  %85 = getelementptr inbounds %struct.list_item, %struct.list_item* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load %struct.list_item*, %struct.list_item** %86, align 8
  %88 = load %struct.list_item*, %struct.list_item** %8, align 8
  %89 = icmp eq %struct.list_item* %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert_true(i32 %90)
  %92 = load %struct.the_list*, %struct.the_list** %5, align 8
  %93 = getelementptr inbounds %struct.the_list, %struct.the_list* %92, i32 0, i32 0
  %94 = load %struct.list_item*, %struct.list_item** %93, align 8
  %95 = load %struct.list_item*, %struct.list_item** %8, align 8
  %96 = icmp ne %struct.list_item* %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert_true(i32 %97)
  br label %107

99:                                               ; preds = %74
  %100 = load %struct.the_list*, %struct.the_list** %5, align 8
  %101 = getelementptr inbounds %struct.the_list, %struct.the_list* %100, i32 0, i32 0
  %102 = load %struct.list_item*, %struct.list_item** %101, align 8
  %103 = load %struct.list_item*, %struct.list_item** %8, align 8
  %104 = icmp eq %struct.list_item* %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert_true(i32 %105)
  br label %107

107:                                              ; preds = %99, %80
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %108, 1
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i32 0, i32* %4, align 4
  br label %135

111:                                              ; preds = %107
  %112 = load i32*, i32** %6, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.list_item*, %struct.list_item** %8, align 8
  %116 = getelementptr inbounds %struct.list_item, %struct.list_item* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %114, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  store i32 0, i32* %4, align 4
  br label %135

120:                                              ; preds = %111
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %7, align 4
  %123 = load i32*, i32** %6, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %6, align 8
  br label %125

125:                                              ; preds = %120
  %126 = load %struct.list_item*, %struct.list_item** %8, align 8
  %127 = getelementptr inbounds %struct.list_item, %struct.list_item* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load %struct.list_item*, %struct.list_item** %128, align 8
  store %struct.list_item* %129, %struct.list_item** %8, align 8
  br label %38

130:                                              ; preds = %38
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  store i32 0, i32* %4, align 4
  br label %135

134:                                              ; preds = %130
  store i32 1, i32* %4, align 4
  br label %135

135:                                              ; preds = %134, %133, %119, %110
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @assert_true(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
