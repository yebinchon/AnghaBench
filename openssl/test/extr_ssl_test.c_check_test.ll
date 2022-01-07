; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssl_test.c_check_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssl_test.c_check_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i64 }

@SSL_TEST_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, i32*)* @check_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_test(%struct.TYPE_24__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @check_result(%struct.TYPE_24__* %6, i32* %7)
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @check_alerts(%struct.TYPE_24__* %11, i32* %12)
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SSL_TEST_SUCCESS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %124

21:                                               ; preds = %2
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @check_protocol(%struct.TYPE_24__* %22, i32* %23)
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @check_servername(%struct.TYPE_24__* %27, i32* %28)
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @check_session_ticket(%struct.TYPE_24__* %32, i32* %33)
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @check_compression(%struct.TYPE_24__* %37, i32* %38)
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @check_session_id(%struct.TYPE_24__* %42, i32* %43)
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @check_npn(%struct.TYPE_24__* %54, i32* %55)
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @check_cipher(%struct.TYPE_24__* %59, i32* %60)
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @check_alpn(%struct.TYPE_24__* %64, i32* %65)
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @check_session_ticket_app_data(%struct.TYPE_24__* %69, i32* %70)
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @check_resumption(%struct.TYPE_24__* %74, i32* %75)
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @check_tmp_key(%struct.TYPE_24__* %79, i32* %80)
  %82 = load i32, i32* %5, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @check_server_cert_type(%struct.TYPE_24__* %84, i32* %85)
  %87 = load i32, i32* %5, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @check_server_sign_hash(%struct.TYPE_24__* %89, i32* %90)
  %92 = load i32, i32* %5, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %5, align 4
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @check_server_sign_type(%struct.TYPE_24__* %94, i32* %95)
  %97 = load i32, i32* %5, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %5, align 4
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @check_server_ca_names(%struct.TYPE_24__* %99, i32* %100)
  %102 = load i32, i32* %5, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %5, align 4
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @check_client_cert_type(%struct.TYPE_24__* %104, i32* %105)
  %107 = load i32, i32* %5, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %5, align 4
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @check_client_sign_hash(%struct.TYPE_24__* %109, i32* %110)
  %112 = load i32, i32* %5, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %5, align 4
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %115 = load i32*, i32** %4, align 8
  %116 = call i32 @check_client_sign_type(%struct.TYPE_24__* %114, i32* %115)
  %117 = load i32, i32* %5, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %5, align 4
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %120 = load i32*, i32** %4, align 8
  %121 = call i32 @check_client_ca_names(%struct.TYPE_24__* %119, i32* %120)
  %122 = load i32, i32* %5, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %21, %2
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @check_result(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @check_alerts(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @check_protocol(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @check_servername(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @check_session_ticket(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @check_compression(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @check_session_id(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @check_npn(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @check_cipher(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @check_alpn(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @check_session_ticket_app_data(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @check_resumption(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @check_tmp_key(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @check_server_cert_type(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @check_server_sign_hash(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @check_server_sign_type(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @check_server_ca_names(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @check_client_cert_type(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @check_client_sign_hash(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @check_client_sign_type(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @check_client_ca_names(%struct.TYPE_24__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
