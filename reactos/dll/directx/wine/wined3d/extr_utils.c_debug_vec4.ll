; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_debug_vec4.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_debug_vec4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_vec4 = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"{%.8e, %.8e, %.8e, %.8e}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @debug_vec4(%struct.wined3d_vec4* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.wined3d_vec4*, align 8
  store %struct.wined3d_vec4* %0, %struct.wined3d_vec4** %3, align 8
  %4 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %3, align 8
  %5 = icmp ne %struct.wined3d_vec4* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %21

7:                                                ; preds = %1
  %8 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %3, align 8
  %9 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %3, align 8
  %12 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %3, align 8
  %15 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %3, align 8
  %18 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 %13, i32 %16, i32 %19)
  store i8* %20, i8** %2, align 8
  br label %21

21:                                               ; preds = %7, %6
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

declare dso_local i8* @wine_dbg_sprintf(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
