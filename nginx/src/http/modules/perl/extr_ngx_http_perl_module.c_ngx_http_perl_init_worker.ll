; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/perl/extr_ngx_http_perl_module.c_ngx_http_perl_init_worker.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/perl/extr_ngx_http_perl_module.c_ngx_http_perl_init_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ngx_http_perl_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"$\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVt_PV = common dso_local global i32 0, align 4
@ngx_pid = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_perl_init_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_perl_init_worker(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @ngx_http_perl_module, align 4
  %6 = call %struct.TYPE_3__* @ngx_http_cycle_get_module_main_conf(i32* %4, i32 %5)
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dTHXa(i32 %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @PERL_SET_CONTEXT(i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @PERL_SET_INTERP(i32 %20)
  %22 = load i32, i32* @TRUE, align 4
  %23 = load i32, i32* @SVt_PV, align 4
  %24 = call i32 @gv_fetchpv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = call i32 @GvSV(i32 %24)
  %26 = load i64, i64* @ngx_pid, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @sv_setiv(i32 %25, i32 %27)
  br label %29

29:                                               ; preds = %9, %1
  %30 = load i32, i32* @NGX_OK, align 4
  ret i32 %30
}

declare dso_local %struct.TYPE_3__* @ngx_http_cycle_get_module_main_conf(i32*, i32) #1

declare dso_local i32 @dTHXa(i32) #1

declare dso_local i32 @PERL_SET_CONTEXT(i32) #1

declare dso_local i32 @PERL_SET_INTERP(i32) #1

declare dso_local i32 @sv_setiv(i32, i32) #1

declare dso_local i32 @GvSV(i32) #1

declare dso_local i32 @gv_fetchpv(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
