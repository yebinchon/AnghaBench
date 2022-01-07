; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_srptest.c_run_srp_kat.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_srptest.c_run_srp_kat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"1024\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"BEB25379D1A8581EB5A727673A2441EE\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"alice\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"password123\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"checking v\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.6 = private unnamed_addr constant [257 x i8] c"7E273DE8696FFC4F4E337D05B4B375BEB0DDE1569E8FA00A9886D8129BADA1F1822223CA1A605B530E379BA4729FDC59F105B4787E5186F5C671085A1447B52A48CF1970B4FB6F8400BBF4CEBFBB168152E08AB5EA53D15C1AFF87B2B9DA6E04E058AD51CC72BFC9033B564E26480D78E955A5E29E7AB245DB2BE315E2099AFB\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"    okay\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"E487CB59D31AC550471E81F00F6928E01DDA08E974A004F49E61F5D105284D20\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"checking B\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.11 = private unnamed_addr constant [257 x i8] c"BD0C61512C692C0CB6D041FA01BB152D4916A1E77AF46AE105393011BAF38964DC46A0670DD125B95A981652236F99D9B681CBF87837EC996C6DA04453728610D0C6DDB58B318885D7D82C7F8DEB75CE7BD4FBAA37089E6F9C6059F388838E7A00030B331EB76840910440B1B27AAEAEEB4012B7D7665238A8E3FB004B117B58\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"60975527035CF2AD1989806F0407210BC81EDC04E2762A56AFD529DDDA2D4393\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"checking A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.15 = private unnamed_addr constant [257 x i8] c"61D5E490F6F1B79547B0704C436F523DD0E560F0C64115BB72557EC44352E8903211C04692272D8B2D1A5358A2CF1B6E0BFCF99F921530EC8E39356179EAE45E42BA92AEACED825171E1E8B9AF6D9C03E1327F44BE087EF06530E69F66615261EEF54073CA11CF5858F0EDFDFE15EFEAB349EF5D76988A3672FAC47B0769447B\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"CE38B9593487DA98554ED47D70A7AE5F462EF019\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"checking client's key\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Client's key\00", align 1
@.str.20 = private unnamed_addr constant [257 x i8] c"B0DC82BABCF30674AE450C0287745E7990A3381F63B387AAF271A10D233861E359B48220F7C4693C9AE12B0A6F67809F0876E2D013800D6C41BB59B6D5979B5C00A172B4A2A5903A0BDCAF8A709585EB2AFAFA8F3499B200210DCC1F10EB33943CD67FC88A2F39A4BE5BEC4EC0A3212DC346D7E474B29EDE8A469FFECA686E5A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"checking server's key\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Server's key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @run_srp_kat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_srp_kat() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  store i32 0, i32* %1, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %13 = call %struct.TYPE_4__* @SRP_get_default_gN(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %12, align 8
  %14 = call i32 @TEST_ptr(%struct.TYPE_4__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %0
  br label %140

17:                                               ; preds = %0
  %18 = call i32 @BN_hex2bn(i32** %2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @SRP_create_verifier_BN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32** %2, i32** %3, i32 %21, i32 %24)
  %26 = call i32 @TEST_true(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  br label %140

29:                                               ; preds = %17
  %30 = call i32 @TEST_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @check_bn(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32* %31, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @.str.6, i64 0, i64 0))
  %33 = call i32 @TEST_true(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %140

36:                                               ; preds = %29
  %37 = call i32 @TEST_note(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %38 = call i32 @BN_hex2bn(i32** %5, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0))
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = call i32* @SRP_Calc_B(i32* %39, i32 %42, i32 %45, i32* %46)
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @SRP_Verify_B_mod_N(i32* %48, i32 %51)
  %53 = call i32 @TEST_true(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %36
  br label %140

56:                                               ; preds = %36
  %57 = call i32 @TEST_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @check_bn(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32* %58, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @.str.11, i64 0, i64 0))
  %60 = call i32 @TEST_true(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  br label %140

63:                                               ; preds = %56
  %64 = call i32 @TEST_note(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %65 = call i32 @BN_hex2bn(i32** %4, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i64 0, i64 0))
  %66 = load i32*, i32** %4, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32* @SRP_Calc_A(i32* %66, i32 %69, i32 %72)
  store i32* %73, i32** %8, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @SRP_Verify_A_mod_N(i32* %74, i32 %77)
  %79 = call i32 @TEST_true(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %63
  br label %140

82:                                               ; preds = %63
  %83 = call i32 @TEST_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @check_bn(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32* %84, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @.str.15, i64 0, i64 0))
  %86 = call i32 @TEST_true(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  br label %140

89:                                               ; preds = %82
  %90 = call i32 @TEST_note(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %91 = load i32*, i32** %8, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32* @SRP_Calc_u(i32* %91, i32* %92, i32 %95)
  store i32* %96, i32** %6, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @check_bn(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32* %97, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0))
  %99 = call i32 @TEST_true(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %89
  br label %140

102:                                              ; preds = %89
  %103 = load i32*, i32** %2, align 8
  %104 = call i32* @SRP_Calc_x(i32* %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32* %104, i32** %7, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %9, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %7, align 8
  %113 = load i32*, i32** %4, align 8
  %114 = load i32*, i32** %6, align 8
  %115 = call i32* @SRP_Calc_client_key(i32 %107, i32* %108, i32 %111, i32* %112, i32* %113, i32* %114)
  store i32* %115, i32** %10, align 8
  %116 = call i32 @TEST_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  %117 = load i32*, i32** %10, align 8
  %118 = call i32 @check_bn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i32* %117, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @.str.20, i64 0, i64 0))
  %119 = call i32 @TEST_true(i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %102
  br label %140

122:                                              ; preds = %102
  %123 = call i32 @TEST_note(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %124 = load i32*, i32** %8, align 8
  %125 = load i32*, i32** %3, align 8
  %126 = load i32*, i32** %6, align 8
  %127 = load i32*, i32** %5, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32* @SRP_Calc_server_key(i32* %124, i32* %125, i32* %126, i32* %127, i32 %130)
  store i32* %131, i32** %11, align 8
  %132 = call i32 @TEST_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0))
  %133 = load i32*, i32** %11, align 8
  %134 = call i32 @check_bn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i32* %133, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @.str.20, i64 0, i64 0))
  %135 = call i32 @TEST_true(i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %122
  br label %140

138:                                              ; preds = %122
  %139 = call i32 @TEST_note(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %140

140:                                              ; preds = %138, %137, %121, %101, %88, %81, %62, %55, %35, %28, %16
  %141 = load i32*, i32** %10, align 8
  %142 = call i32 @BN_clear_free(i32* %141)
  %143 = load i32*, i32** %11, align 8
  %144 = call i32 @BN_clear_free(i32* %143)
  %145 = load i32*, i32** %7, align 8
  %146 = call i32 @BN_clear_free(i32* %145)
  %147 = load i32*, i32** %6, align 8
  %148 = call i32 @BN_free(i32* %147)
  %149 = load i32*, i32** %8, align 8
  %150 = call i32 @BN_free(i32* %149)
  %151 = load i32*, i32** %4, align 8
  %152 = call i32 @BN_clear_free(i32* %151)
  %153 = load i32*, i32** %9, align 8
  %154 = call i32 @BN_free(i32* %153)
  %155 = load i32*, i32** %5, align 8
  %156 = call i32 @BN_clear_free(i32* %155)
  %157 = load i32*, i32** %2, align 8
  %158 = call i32 @BN_free(i32* %157)
  %159 = load i32*, i32** %3, align 8
  %160 = call i32 @BN_clear_free(i32* %159)
  %161 = load i32, i32* %1, align 4
  ret i32 %161
}

declare dso_local i32 @TEST_ptr(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @SRP_get_default_gN(i8*) #1

declare dso_local i32 @BN_hex2bn(i32**, i8*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @SRP_create_verifier_BN(i8*, i8*, i32**, i32**, i32, i32) #1

declare dso_local i32 @TEST_info(i8*) #1

declare dso_local i32 @check_bn(i8*, i32*, i8*) #1

declare dso_local i32 @TEST_note(i8*) #1

declare dso_local i32* @SRP_Calc_B(i32*, i32, i32, i32*) #1

declare dso_local i32 @SRP_Verify_B_mod_N(i32*, i32) #1

declare dso_local i32* @SRP_Calc_A(i32*, i32, i32) #1

declare dso_local i32 @SRP_Verify_A_mod_N(i32*, i32) #1

declare dso_local i32* @SRP_Calc_u(i32*, i32*, i32) #1

declare dso_local i32* @SRP_Calc_x(i32*, i8*, i8*) #1

declare dso_local i32* @SRP_Calc_client_key(i32, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32* @SRP_Calc_server_key(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_clear_free(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
