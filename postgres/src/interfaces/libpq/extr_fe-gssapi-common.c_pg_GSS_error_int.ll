; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-gssapi-common.c_pg_GSS_error_int.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-gssapi-common.c_pg_GSS_error_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@GSS_C_NO_OID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i64, i32)* @pg_GSS_error_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pg_GSS_error_int(i32 %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %24, %4
  %13 = load i64, i64* %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @GSS_C_NO_OID, align 4
  %16 = call i32 @gss_display_status(i64* %9, i64 %13, i32 %14, i32 %15, i64* %11, %struct.TYPE_4__* %10)
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @appendPQExpBuffer(i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %21)
  %23 = call i32 @gss_release_buffer(i64* %9, %struct.TYPE_4__* %10)
  br label %24

24:                                               ; preds = %12
  %25 = load i64, i64* %11, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %12, label %27

27:                                               ; preds = %24
  ret void
}

declare dso_local i32 @gss_display_status(i64*, i64, i32, i32, i64*, %struct.TYPE_4__*) #1

declare dso_local i32 @appendPQExpBuffer(i32, i8*, i8*, i8*) #1

declare dso_local i32 @gss_release_buffer(i64*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
