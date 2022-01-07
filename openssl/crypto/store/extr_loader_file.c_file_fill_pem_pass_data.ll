; ModuleID = '/home/carl/AnghaBench/openssl/crypto/store/extr_loader_file.c_file_fill_pem_pass_data.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/store/extr_loader_file.c_file_fill_pem_pass_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pem_pass_data = type { i8*, i8*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pem_pass_data*, i8*, i32*, i8*)* @file_fill_pem_pass_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_fill_pem_pass_data(%struct.pem_pass_data* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pem_pass_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store %struct.pem_pass_data* %0, %struct.pem_pass_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.pem_pass_data*, %struct.pem_pass_data** %6, align 8
  %11 = icmp eq %struct.pem_pass_data* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %23

13:                                               ; preds = %4
  %14 = load i32*, i32** %8, align 8
  %15 = load %struct.pem_pass_data*, %struct.pem_pass_data** %6, align 8
  %16 = getelementptr inbounds %struct.pem_pass_data, %struct.pem_pass_data* %15, i32 0, i32 2
  store i32* %14, i32** %16, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load %struct.pem_pass_data*, %struct.pem_pass_data** %6, align 8
  %19 = getelementptr inbounds %struct.pem_pass_data, %struct.pem_pass_data* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.pem_pass_data*, %struct.pem_pass_data** %6, align 8
  %22 = getelementptr inbounds %struct.pem_pass_data, %struct.pem_pass_data* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  store i32 1, i32* %5, align 4
  br label %23

23:                                               ; preds = %13, %12
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
