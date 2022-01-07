; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_mrb_mruby_pack_gem_init.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_mrb_mruby_pack_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@mrb_pack_pack = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@mrb_pack_unpack = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"unpack1\00", align 1
@mrb_pack_unpack1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_mruby_pack_gem_init(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = call i32 (...) @check_little_endian()
  %4 = call i32 (...) @make_base64_dec_tab()
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @mrb_pack_pack, align 4
  %10 = call i32 @MRB_ARGS_REQ(i32 1)
  %11 = call i32 @mrb_define_method(%struct.TYPE_4__* %5, i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @mrb_pack_unpack, align 4
  %17 = call i32 @MRB_ARGS_REQ(i32 1)
  %18 = call i32 @mrb_define_method(%struct.TYPE_4__* %12, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @mrb_pack_unpack1, align 4
  %24 = call i32 @MRB_ARGS_REQ(i32 1)
  %25 = call i32 @mrb_define_method(%struct.TYPE_4__* %19, i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %23, i32 %24)
  ret void
}

declare dso_local i32 @check_little_endian(...) #1

declare dso_local i32 @make_base64_dec_tab(...) #1

declare dso_local i32 @mrb_define_method(%struct.TYPE_4__*, i32, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
