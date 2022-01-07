; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_tls_poor_mans_ncp.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_tls_poor_mans_ncp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32, i32, i32, i64 }

@D_TLS_DEBUG_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Using peer cipher '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tls_poor_mans_ncp(%struct.options* %0, i8* %1) #0 {
  %3 = alloca %struct.options*, align 8
  %4 = alloca i8*, align 8
  store %struct.options* %0, %struct.options** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.options*, %struct.options** %3, align 8
  %6 = getelementptr inbounds %struct.options, %struct.options* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  %13 = load %struct.options*, %struct.options** %3, align 8
  %14 = getelementptr inbounds %struct.options, %struct.options* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @strcmp(i32 %15, i8* %16)
  %18 = icmp ne i64 0, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %12
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.options*, %struct.options** %3, align 8
  %22 = getelementptr inbounds %struct.options, %struct.options* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @tls_item_in_cipher_list(i8* %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %19
  %27 = load i8*, i8** %4, align 8
  %28 = load %struct.options*, %struct.options** %3, align 8
  %29 = getelementptr inbounds %struct.options, %struct.options* %28, i32 0, i32 1
  %30 = call i32 @string_alloc(i8* %27, i32* %29)
  %31 = load %struct.options*, %struct.options** %3, align 8
  %32 = getelementptr inbounds %struct.options, %struct.options* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @D_TLS_DEBUG_LOW, align 4
  %34 = load %struct.options*, %struct.options** %3, align 8
  %35 = getelementptr inbounds %struct.options, %struct.options* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @msg(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %26, %19
  br label %39

39:                                               ; preds = %38, %12, %9, %2
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @tls_item_in_cipher_list(i8*, i32) #1

declare dso_local i32 @string_alloc(i8*, i32*) #1

declare dso_local i32 @msg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
