; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-redirect.c_redirect_create_from_hash.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-redirect.c_redirect_create_from_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash = type { i32 }
%struct.lwan_redirect_settings = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"code\00", align 1
@HTTP_MOVED_PERMANENTLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.hash*)* @redirect_create_from_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @redirect_create_from_hash(i8* %0, %struct.hash* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hash*, align 8
  %5 = alloca %struct.lwan_redirect_settings, align 4
  store i8* %0, i8** %3, align 8
  store %struct.hash* %1, %struct.hash** %4, align 8
  %6 = getelementptr inbounds %struct.lwan_redirect_settings, %struct.lwan_redirect_settings* %5, i32 0, i32 0
  %7 = load %struct.hash*, %struct.hash** %4, align 8
  %8 = call i32 @hash_find(%struct.hash* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @HTTP_MOVED_PERMANENTLY, align 4
  %10 = call i32 @parse_http_code(i32 %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = getelementptr inbounds %struct.lwan_redirect_settings, %struct.lwan_redirect_settings* %5, i32 0, i32 1
  %12 = load %struct.hash*, %struct.hash** %4, align 8
  %13 = call i32 @hash_find(%struct.hash* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %13, i32* %11, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = call i8* @redirect_create(i8* %14, %struct.lwan_redirect_settings* %5)
  ret i8* %15
}

declare dso_local i32 @parse_http_code(i32, i32) #1

declare dso_local i32 @hash_find(%struct.hash*, i8*) #1

declare dso_local i8* @redirect_create(i8*, %struct.lwan_redirect_settings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
