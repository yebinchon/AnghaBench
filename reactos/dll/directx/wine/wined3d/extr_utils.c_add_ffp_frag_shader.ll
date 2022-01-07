; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_add_ffp_frag_shader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_add_ffp_frag_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wine_rb_tree = type { i32 }
%struct.ffp_frag_desc = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Failed to insert ffp frag shader.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_ffp_frag_shader(%struct.wine_rb_tree* %0, %struct.ffp_frag_desc* %1) #0 {
  %3 = alloca %struct.wine_rb_tree*, align 8
  %4 = alloca %struct.ffp_frag_desc*, align 8
  store %struct.wine_rb_tree* %0, %struct.wine_rb_tree** %3, align 8
  store %struct.ffp_frag_desc* %1, %struct.ffp_frag_desc** %4, align 8
  %5 = load %struct.wine_rb_tree*, %struct.wine_rb_tree** %3, align 8
  %6 = load %struct.ffp_frag_desc*, %struct.ffp_frag_desc** %4, align 8
  %7 = getelementptr inbounds %struct.ffp_frag_desc, %struct.ffp_frag_desc* %6, i32 0, i32 1
  %8 = load %struct.ffp_frag_desc*, %struct.ffp_frag_desc** %4, align 8
  %9 = getelementptr inbounds %struct.ffp_frag_desc, %struct.ffp_frag_desc* %8, i32 0, i32 0
  %10 = call i32 @wine_rb_put(%struct.wine_rb_tree* %5, i32* %7, i32* %9)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %2
  ret void
}

declare dso_local i32 @wine_rb_put(%struct.wine_rb_tree*, i32*, i32*) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
