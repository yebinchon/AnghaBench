; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_verify_cert_set_env.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_verify_cert_set_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_set = type { i32 }
%struct.x509_track = type { i32 }
%struct.gc_arena = type { i32 }
%struct.buffer = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"tls_id_%d\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"tls_digest_%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"tls_digest_sha256_%d\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"tls_serial_%d\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"tls_serial_hex_%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.env_set*, i32*, i32, i8*, i8*, %struct.x509_track*)* @verify_cert_set_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_cert_set_env(%struct.env_set* %0, i32* %1, i32 %2, i8* %3, i8* %4, %struct.x509_track* %5) #0 {
  %7 = alloca %struct.env_set*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.x509_track*, align 8
  %13 = alloca [64 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca %struct.gc_arena, align 4
  %16 = alloca %struct.buffer, align 4
  %17 = alloca %struct.buffer, align 4
  store %struct.env_set* %0, %struct.env_set** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.x509_track* %5, %struct.x509_track** %12, align 8
  store i8* null, i8** %14, align 8
  %18 = call i32 (...) @gc_new()
  %19 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %15, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.x509_track*, %struct.x509_track** %12, align 8
  %21 = icmp ne %struct.x509_track* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %6
  %23 = load %struct.x509_track*, %struct.x509_track** %12, align 8
  %24 = load %struct.env_set*, %struct.env_set** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @x509_setenv_track(%struct.x509_track* %23, %struct.env_set* %24, i32 %25, i32* %26)
  br label %33

28:                                               ; preds = %6
  %29 = load %struct.env_set*, %struct.env_set** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @x509_setenv(%struct.env_set* %29, i32 %30, i32* %31)
  br label %33

33:                                               ; preds = %28, %22
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @openvpn_snprintf(i8* %34, i32 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.env_set*, %struct.env_set** %7, align 8
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 @setenv_str(%struct.env_set* %37, i8* %38, i8* %39)
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @x509_get_sha1_fingerprint(i32* %41, %struct.gc_arena* %15)
  %43 = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @x509_get_sha256_fingerprint(i32* %44, %struct.gc_arena* %15)
  %46 = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @openvpn_snprintf(i8* %47, i32 64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.env_set*, %struct.env_set** %7, align 8
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %52 = call i32 @BPTR(%struct.buffer* %16)
  %53 = call i32 @BLEN(%struct.buffer* %16)
  %54 = call i8* @format_hex_ex(i32 %52, i32 %53, i32 0, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.gc_arena* %15)
  %55 = call i32 @setenv_str(%struct.env_set* %50, i8* %51, i8* %54)
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @openvpn_snprintf(i8* %56, i32 64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load %struct.env_set*, %struct.env_set** %7, align 8
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %61 = call i32 @BPTR(%struct.buffer* %17)
  %62 = call i32 @BLEN(%struct.buffer* %17)
  %63 = call i8* @format_hex_ex(i32 %61, i32 %62, i32 0, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.gc_arena* %15)
  %64 = call i32 @setenv_str(%struct.env_set* %59, i8* %60, i8* %63)
  %65 = load i32*, i32** %8, align 8
  %66 = call i8* @backend_x509_get_serial(i32* %65, %struct.gc_arena* %15)
  store i8* %66, i8** %14, align 8
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @openvpn_snprintf(i8* %67, i32 64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  %70 = load %struct.env_set*, %struct.env_set** %7, align 8
  %71 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %72 = load i8*, i8** %14, align 8
  %73 = call i32 @setenv_str(%struct.env_set* %70, i8* %71, i8* %72)
  %74 = load i32*, i32** %8, align 8
  %75 = call i8* @backend_x509_get_serial_hex(i32* %74, %struct.gc_arena* %15)
  store i8* %75, i8** %14, align 8
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @openvpn_snprintf(i8* %76, i32 64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  %79 = load %struct.env_set*, %struct.env_set** %7, align 8
  %80 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %81 = load i8*, i8** %14, align 8
  %82 = call i32 @setenv_str(%struct.env_set* %79, i8* %80, i8* %81)
  %83 = call i32 @gc_free(%struct.gc_arena* %15)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @x509_setenv_track(%struct.x509_track*, %struct.env_set*, i32, i32*) #1

declare dso_local i32 @x509_setenv(%struct.env_set*, i32, i32*) #1

declare dso_local i32 @openvpn_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @setenv_str(%struct.env_set*, i8*, i8*) #1

declare dso_local i32 @x509_get_sha1_fingerprint(i32*, %struct.gc_arena*) #1

declare dso_local i32 @x509_get_sha256_fingerprint(i32*, %struct.gc_arena*) #1

declare dso_local i8* @format_hex_ex(i32, i32, i32, i32, i8*, %struct.gc_arena*) #1

declare dso_local i32 @BPTR(%struct.buffer*) #1

declare dso_local i32 @BLEN(%struct.buffer*) #1

declare dso_local i8* @backend_x509_get_serial(i32*, %struct.gc_arena*) #1

declare dso_local i8* @backend_x509_get_serial_hex(i32*, %struct.gc_arena*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
