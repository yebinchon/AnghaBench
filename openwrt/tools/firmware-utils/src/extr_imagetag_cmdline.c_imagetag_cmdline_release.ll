; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_imagetag_cmdline.c_imagetag_cmdline_release.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_imagetag_cmdline.c_imagetag_cmdline_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gengetopt_args_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gengetopt_args_info*)* @imagetag_cmdline_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imagetag_cmdline_release(%struct.gengetopt_args_info* %0) #0 {
  %2 = alloca %struct.gengetopt_args_info*, align 8
  store %struct.gengetopt_args_info* %0, %struct.gengetopt_args_info** %2, align 8
  %3 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %4 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %3, i32 0, i32 44
  %5 = call i32 @free_string_field(i32* %4)
  %6 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %7 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %6, i32 0, i32 43
  %8 = call i32 @free_string_field(i32* %7)
  %9 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %10 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %9, i32 0, i32 42
  %11 = call i32 @free_string_field(i32* %10)
  %12 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %13 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %12, i32 0, i32 41
  %14 = call i32 @free_string_field(i32* %13)
  %15 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %16 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %15, i32 0, i32 40
  %17 = call i32 @free_string_field(i32* %16)
  %18 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %19 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %18, i32 0, i32 39
  %20 = call i32 @free_string_field(i32* %19)
  %21 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %22 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %21, i32 0, i32 38
  %23 = call i32 @free_string_field(i32* %22)
  %24 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %25 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %24, i32 0, i32 37
  %26 = call i32 @free_string_field(i32* %25)
  %27 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %28 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %27, i32 0, i32 36
  %29 = call i32 @free_string_field(i32* %28)
  %30 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %31 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %30, i32 0, i32 35
  %32 = call i32 @free_string_field(i32* %31)
  %33 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %34 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %33, i32 0, i32 34
  %35 = call i32 @free_string_field(i32* %34)
  %36 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %37 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %36, i32 0, i32 33
  %38 = call i32 @free_string_field(i32* %37)
  %39 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %40 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %39, i32 0, i32 32
  %41 = call i32 @free_string_field(i32* %40)
  %42 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %43 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %42, i32 0, i32 31
  %44 = call i32 @free_string_field(i32* %43)
  %45 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %46 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %45, i32 0, i32 30
  %47 = call i32 @free_string_field(i32* %46)
  %48 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %49 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %48, i32 0, i32 29
  %50 = call i32 @free_string_field(i32* %49)
  %51 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %52 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %51, i32 0, i32 28
  %53 = call i32 @free_string_field(i32* %52)
  %54 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %55 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %54, i32 0, i32 27
  %56 = call i32 @free_string_field(i32* %55)
  %57 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %58 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %57, i32 0, i32 26
  %59 = call i32 @free_string_field(i32* %58)
  %60 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %61 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %60, i32 0, i32 25
  %62 = call i32 @free_string_field(i32* %61)
  %63 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %64 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %63, i32 0, i32 24
  %65 = call i32 @free_string_field(i32* %64)
  %66 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %67 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %66, i32 0, i32 23
  %68 = call i32 @free_string_field(i32* %67)
  %69 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %70 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %69, i32 0, i32 22
  %71 = call i32 @free_string_field(i32* %70)
  %72 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %73 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %72, i32 0, i32 21
  %74 = call i32 @free_string_field(i32* %73)
  %75 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %76 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %75, i32 0, i32 20
  %77 = call i32 @free_string_field(i32* %76)
  %78 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %79 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %78, i32 0, i32 19
  %80 = call i32 @free_string_field(i32* %79)
  %81 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %82 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %81, i32 0, i32 18
  %83 = call i32 @free_string_field(i32* %82)
  %84 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %85 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %84, i32 0, i32 17
  %86 = call i32 @free_string_field(i32* %85)
  %87 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %88 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %87, i32 0, i32 16
  %89 = call i32 @free_string_field(i32* %88)
  %90 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %91 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %90, i32 0, i32 15
  %92 = call i32 @free_string_field(i32* %91)
  %93 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %94 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %93, i32 0, i32 14
  %95 = call i32 @free_string_field(i32* %94)
  %96 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %97 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %96, i32 0, i32 13
  %98 = call i32 @free_string_field(i32* %97)
  %99 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %100 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %99, i32 0, i32 12
  %101 = call i32 @free_string_field(i32* %100)
  %102 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %103 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %102, i32 0, i32 11
  %104 = call i32 @free_string_field(i32* %103)
  %105 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %106 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %105, i32 0, i32 10
  %107 = call i32 @free_string_field(i32* %106)
  %108 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %109 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %108, i32 0, i32 9
  %110 = call i32 @free_string_field(i32* %109)
  %111 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %112 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %111, i32 0, i32 8
  %113 = call i32 @free_string_field(i32* %112)
  %114 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %115 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %114, i32 0, i32 7
  %116 = call i32 @free_string_field(i32* %115)
  %117 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %118 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %117, i32 0, i32 6
  %119 = call i32 @free_string_field(i32* %118)
  %120 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %121 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %120, i32 0, i32 5
  %122 = call i32 @free_string_field(i32* %121)
  %123 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %124 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %123, i32 0, i32 4
  %125 = call i32 @free_string_field(i32* %124)
  %126 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %127 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %126, i32 0, i32 3
  %128 = call i32 @free_string_field(i32* %127)
  %129 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %130 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %129, i32 0, i32 2
  %131 = call i32 @free_string_field(i32* %130)
  %132 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %133 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %132, i32 0, i32 1
  %134 = call i32 @free_string_field(i32* %133)
  %135 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %136 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %135, i32 0, i32 0
  %137 = call i32 @free_string_field(i32* %136)
  %138 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %139 = call i32 @clear_given(%struct.gengetopt_args_info* %138)
  ret void
}

declare dso_local i32 @free_string_field(i32*) #1

declare dso_local i32 @clear_given(%struct.gengetopt_args_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
