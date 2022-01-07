; ModuleID = '/home/carl/AnghaBench/mongoose/src/extr_mg_net.c_mg_mgr_init_opt.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/extr_mg_net.c_mg_mgr_init_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32, i32, %struct.mg_iface**, i8*, i32* }
%struct.mg_iface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mg_iface*)* }
%struct.mg_mgr_init_opts = type { i32, i32*, i32**, i32* }

@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@mg_num_ifaces = common dso_local global i32 0, align 4
@mg_ifaces = common dso_local global i32** null, align 8
@MG_MAIN_IFACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"==================================\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"init mgr=%p\00", align 1
@INVALID_SOCKET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_mgr_init_opt(%struct.mg_mgr* %0, i8* %1, %struct.mg_mgr_init_opts* byval(%struct.mg_mgr_init_opts) align 8 %2) #0 {
  %4 = alloca %struct.mg_mgr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.mg_mgr* %0, %struct.mg_mgr** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.mg_mgr*, %struct.mg_mgr** %4, align 8
  %8 = call i32 @memset(%struct.mg_mgr* %7, i32 0, i32 32)
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.mg_mgr*, %struct.mg_mgr** %4, align 8
  %11 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %10, i32 0, i32 3
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* @SIGPIPE, align 4
  %13 = load i32, i32* @SIG_IGN, align 4
  %14 = call i32 @signal(i32 %12, i32 %13)
  %15 = getelementptr inbounds %struct.mg_mgr_init_opts, %struct.mg_mgr_init_opts* %2, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* @mg_num_ifaces, align 4
  %20 = getelementptr inbounds %struct.mg_mgr_init_opts, %struct.mg_mgr_init_opts* %2, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i32**, i32*** @mg_ifaces, align 8
  %22 = getelementptr inbounds %struct.mg_mgr_init_opts, %struct.mg_mgr_init_opts* %2, i32 0, i32 2
  store i32** %21, i32*** %22, align 8
  br label %23

23:                                               ; preds = %18, %3
  %24 = getelementptr inbounds %struct.mg_mgr_init_opts, %struct.mg_mgr_init_opts* %2, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.mg_mgr_init_opts, %struct.mg_mgr_init_opts* %2, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds %struct.mg_mgr_init_opts, %struct.mg_mgr_init_opts* %2, i32 0, i32 2
  %31 = load i32**, i32*** %30, align 8
  %32 = load i64, i64* @MG_MAIN_IFACE, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  store i32* %29, i32** %33, align 8
  br label %34

34:                                               ; preds = %27, %23
  %35 = getelementptr inbounds %struct.mg_mgr_init_opts, %struct.mg_mgr_init_opts* %2, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mg_mgr*, %struct.mg_mgr** %4, align 8
  %38 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = getelementptr inbounds %struct.mg_mgr_init_opts, %struct.mg_mgr_init_opts* %2, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = mul i64 8, %41
  %43 = trunc i64 %42 to i32
  %44 = call i64 @MG_MALLOC(i32 %43)
  %45 = inttoptr i64 %44 to %struct.mg_iface**
  %46 = load %struct.mg_mgr*, %struct.mg_mgr** %4, align 8
  %47 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %46, i32 0, i32 2
  store %struct.mg_iface** %45, %struct.mg_iface*** %47, align 8
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %87, %34
  %49 = load i32, i32* %6, align 4
  %50 = getelementptr inbounds %struct.mg_mgr_init_opts, %struct.mg_mgr_init_opts* %2, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %90

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.mg_mgr_init_opts, %struct.mg_mgr_init_opts* %2, i32 0, i32 2
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.mg_mgr*, %struct.mg_mgr** %4, align 8
  %61 = call %struct.mg_iface* @mg_if_create_iface(i32* %59, %struct.mg_mgr* %60)
  %62 = load %struct.mg_mgr*, %struct.mg_mgr** %4, align 8
  %63 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %62, i32 0, i32 2
  %64 = load %struct.mg_iface**, %struct.mg_iface*** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.mg_iface*, %struct.mg_iface** %64, i64 %66
  store %struct.mg_iface* %61, %struct.mg_iface** %67, align 8
  %68 = load %struct.mg_mgr*, %struct.mg_mgr** %4, align 8
  %69 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %68, i32 0, i32 2
  %70 = load %struct.mg_iface**, %struct.mg_iface*** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.mg_iface*, %struct.mg_iface** %70, i64 %72
  %74 = load %struct.mg_iface*, %struct.mg_iface** %73, align 8
  %75 = getelementptr inbounds %struct.mg_iface, %struct.mg_iface* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32 (%struct.mg_iface*)*, i32 (%struct.mg_iface*)** %77, align 8
  %79 = load %struct.mg_mgr*, %struct.mg_mgr** %4, align 8
  %80 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %79, i32 0, i32 2
  %81 = load %struct.mg_iface**, %struct.mg_iface*** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.mg_iface*, %struct.mg_iface** %81, i64 %83
  %85 = load %struct.mg_iface*, %struct.mg_iface** %84, align 8
  %86 = call i32 %78(%struct.mg_iface* %85)
  br label %87

87:                                               ; preds = %53
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %48

90:                                               ; preds = %48
  %91 = getelementptr inbounds %struct.mg_mgr_init_opts, %struct.mg_mgr_init_opts* %2, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.mg_mgr_init_opts, %struct.mg_mgr_init_opts* %2, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @strdup(i32* %96)
  %98 = load %struct.mg_mgr*, %struct.mg_mgr** %4, align 8
  %99 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %94, %90
  %101 = call i32 @DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %102 = load %struct.mg_mgr*, %struct.mg_mgr** %4, align 8
  %103 = bitcast %struct.mg_mgr* %102 to i8*
  %104 = call i32 @DBG(i8* %103)
  ret void
}

declare dso_local i32 @memset(%struct.mg_mgr*, i32, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i64 @MG_MALLOC(i32) #1

declare dso_local %struct.mg_iface* @mg_if_create_iface(i32*, %struct.mg_mgr*) #1

declare dso_local i32 @strdup(i32*) #1

declare dso_local i32 @DBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
