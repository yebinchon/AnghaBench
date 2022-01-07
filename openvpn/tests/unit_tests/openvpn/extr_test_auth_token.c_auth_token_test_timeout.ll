; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_auth_token.c_auth_token_test_timeout.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_auth_token.c_auth_token_test_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_context = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i32, i32* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@now = common dso_local global i32 0, align 4
@AUTH_TOKEN_HMAC_OK = common dso_local global i32 0, align 4
@AUTH_TOKEN_EXPIRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @auth_token_test_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auth_token_test_timeout(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.test_context*, align 8
  store i8** %0, i8*** %2, align 8
  %4 = load i8**, i8*** %2, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.test_context*
  store %struct.test_context* %6, %struct.test_context** %3, align 8
  store i32 100000, i32* @now, align 4
  %7 = load %struct.test_context*, %struct.test_context** %3, align 8
  %8 = getelementptr inbounds %struct.test_context, %struct.test_context* %7, i32 0, i32 2
  %9 = load %struct.test_context*, %struct.test_context** %3, align 8
  %10 = getelementptr inbounds %struct.test_context, %struct.test_context* %9, i32 0, i32 1
  %11 = call i32 @generate_auth_token(%struct.TYPE_10__* %8, %struct.TYPE_11__* %10)
  %12 = load %struct.test_context*, %struct.test_context** %3, align 8
  %13 = getelementptr inbounds %struct.test_context, %struct.test_context* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.test_context*, %struct.test_context** %3, align 8
  %17 = getelementptr inbounds %struct.test_context, %struct.test_context* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @strcpy(i32 %15, i32 %19)
  %21 = load %struct.test_context*, %struct.test_context** %3, align 8
  %22 = getelementptr inbounds %struct.test_context, %struct.test_context* %21, i32 0, i32 2
  %23 = load %struct.test_context*, %struct.test_context** %3, align 8
  %24 = getelementptr inbounds %struct.test_context, %struct.test_context* %23, i32 0, i32 1
  %25 = load %struct.test_context*, %struct.test_context** %3, align 8
  %26 = getelementptr inbounds %struct.test_context, %struct.test_context* %25, i32 0, i32 0
  %27 = call i32 @verify_auth_token(%struct.TYPE_10__* %22, %struct.TYPE_11__* %24, %struct.TYPE_12__* %26)
  %28 = load i32, i32* @AUTH_TOKEN_HMAC_OK, align 4
  %29 = call i32 @assert_int_equal(i32 %27, i32 %28)
  store i32 99900, i32* @now, align 4
  %30 = load %struct.test_context*, %struct.test_context** %3, align 8
  %31 = getelementptr inbounds %struct.test_context, %struct.test_context* %30, i32 0, i32 2
  %32 = load %struct.test_context*, %struct.test_context** %3, align 8
  %33 = getelementptr inbounds %struct.test_context, %struct.test_context* %32, i32 0, i32 1
  %34 = load %struct.test_context*, %struct.test_context** %3, align 8
  %35 = getelementptr inbounds %struct.test_context, %struct.test_context* %34, i32 0, i32 0
  %36 = call i32 @verify_auth_token(%struct.TYPE_10__* %31, %struct.TYPE_11__* %33, %struct.TYPE_12__* %35)
  %37 = load i32, i32* @AUTH_TOKEN_HMAC_OK, align 4
  %38 = load i32, i32* @AUTH_TOKEN_EXPIRED, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @assert_int_equal(i32 %36, i32 %39)
  %41 = load %struct.test_context*, %struct.test_context** %3, align 8
  %42 = getelementptr inbounds %struct.test_context, %struct.test_context* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 2, %46
  %48 = add nsw i32 100000, %47
  %49 = sub nsw i32 %48, 20
  store i32 %49, i32* @now, align 4
  %50 = load %struct.test_context*, %struct.test_context** %3, align 8
  %51 = getelementptr inbounds %struct.test_context, %struct.test_context* %50, i32 0, i32 2
  %52 = load %struct.test_context*, %struct.test_context** %3, align 8
  %53 = getelementptr inbounds %struct.test_context, %struct.test_context* %52, i32 0, i32 1
  %54 = load %struct.test_context*, %struct.test_context** %3, align 8
  %55 = getelementptr inbounds %struct.test_context, %struct.test_context* %54, i32 0, i32 0
  %56 = call i32 @verify_auth_token(%struct.TYPE_10__* %51, %struct.TYPE_11__* %53, %struct.TYPE_12__* %55)
  %57 = load i32, i32* @AUTH_TOKEN_HMAC_OK, align 4
  %58 = call i32 @assert_int_equal(i32 %56, i32 %57)
  %59 = load %struct.test_context*, %struct.test_context** %3, align 8
  %60 = getelementptr inbounds %struct.test_context, %struct.test_context* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 2, %64
  %66 = add nsw i32 100000, %65
  %67 = add nsw i32 %66, 20
  store i32 %67, i32* @now, align 4
  %68 = load %struct.test_context*, %struct.test_context** %3, align 8
  %69 = getelementptr inbounds %struct.test_context, %struct.test_context* %68, i32 0, i32 2
  %70 = load %struct.test_context*, %struct.test_context** %3, align 8
  %71 = getelementptr inbounds %struct.test_context, %struct.test_context* %70, i32 0, i32 1
  %72 = load %struct.test_context*, %struct.test_context** %3, align 8
  %73 = getelementptr inbounds %struct.test_context, %struct.test_context* %72, i32 0, i32 0
  %74 = call i32 @verify_auth_token(%struct.TYPE_10__* %69, %struct.TYPE_11__* %71, %struct.TYPE_12__* %73)
  %75 = load i32, i32* @AUTH_TOKEN_HMAC_OK, align 4
  %76 = load i32, i32* @AUTH_TOKEN_EXPIRED, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @assert_int_equal(i32 %74, i32 %77)
  %79 = load %struct.test_context*, %struct.test_context** %3, align 8
  %80 = getelementptr inbounds %struct.test_context, %struct.test_context* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32* @strdup(i32 %82)
  %84 = load %struct.test_context*, %struct.test_context** %3, align 8
  %85 = getelementptr inbounds %struct.test_context, %struct.test_context* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  store i32* %83, i32** %86, align 8
  %87 = load %struct.test_context*, %struct.test_context** %3, align 8
  %88 = getelementptr inbounds %struct.test_context, %struct.test_context* %87, i32 0, i32 2
  %89 = load %struct.test_context*, %struct.test_context** %3, align 8
  %90 = getelementptr inbounds %struct.test_context, %struct.test_context* %89, i32 0, i32 1
  %91 = load %struct.test_context*, %struct.test_context** %3, align 8
  %92 = getelementptr inbounds %struct.test_context, %struct.test_context* %91, i32 0, i32 0
  %93 = call i32 @verify_auth_token(%struct.TYPE_10__* %88, %struct.TYPE_11__* %90, %struct.TYPE_12__* %92)
  %94 = load i32, i32* @AUTH_TOKEN_HMAC_OK, align 4
  %95 = call i32 @assert_int_equal(i32 %93, i32 %94)
  %96 = load %struct.test_context*, %struct.test_context** %3, align 8
  %97 = getelementptr inbounds %struct.test_context, %struct.test_context* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 100000, %101
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @now, align 4
  %104 = load %struct.test_context*, %struct.test_context** %3, align 8
  %105 = getelementptr inbounds %struct.test_context, %struct.test_context* %104, i32 0, i32 2
  %106 = load %struct.test_context*, %struct.test_context** %3, align 8
  %107 = getelementptr inbounds %struct.test_context, %struct.test_context* %106, i32 0, i32 1
  %108 = load %struct.test_context*, %struct.test_context** %3, align 8
  %109 = getelementptr inbounds %struct.test_context, %struct.test_context* %108, i32 0, i32 0
  %110 = call i32 @verify_auth_token(%struct.TYPE_10__* %105, %struct.TYPE_11__* %107, %struct.TYPE_12__* %109)
  %111 = load i32, i32* @AUTH_TOKEN_HMAC_OK, align 4
  %112 = load i32, i32* @AUTH_TOKEN_EXPIRED, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @assert_int_equal(i32 %110, i32 %113)
  %115 = load %struct.test_context*, %struct.test_context** %3, align 8
  %116 = getelementptr inbounds %struct.test_context, %struct.test_context* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @free(i32* %118)
  %120 = load %struct.test_context*, %struct.test_context** %3, align 8
  %121 = getelementptr inbounds %struct.test_context, %struct.test_context* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  store i32* null, i32** %122, align 8
  store i32 100000, i32* @now, align 4
  br label %123

123:                                              ; preds = %134, %1
  %124 = load i32, i32* @now, align 4
  %125 = load %struct.test_context*, %struct.test_context** %3, align 8
  %126 = getelementptr inbounds %struct.test_context, %struct.test_context* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 100000, %130
  %132 = add nsw i32 %131, 1
  %133 = icmp slt i32 %124, %132
  br i1 %133, label %134, label %166

134:                                              ; preds = %123
  %135 = load %struct.test_context*, %struct.test_context** %3, align 8
  %136 = getelementptr inbounds %struct.test_context, %struct.test_context* %135, i32 0, i32 2
  %137 = load %struct.test_context*, %struct.test_context** %3, align 8
  %138 = getelementptr inbounds %struct.test_context, %struct.test_context* %137, i32 0, i32 1
  %139 = load %struct.test_context*, %struct.test_context** %3, align 8
  %140 = getelementptr inbounds %struct.test_context, %struct.test_context* %139, i32 0, i32 0
  %141 = call i32 @verify_auth_token(%struct.TYPE_10__* %136, %struct.TYPE_11__* %138, %struct.TYPE_12__* %140)
  %142 = load i32, i32* @AUTH_TOKEN_HMAC_OK, align 4
  %143 = call i32 @assert_int_equal(i32 %141, i32 %142)
  %144 = load %struct.test_context*, %struct.test_context** %3, align 8
  %145 = getelementptr inbounds %struct.test_context, %struct.test_context* %144, i32 0, i32 2
  %146 = load %struct.test_context*, %struct.test_context** %3, align 8
  %147 = getelementptr inbounds %struct.test_context, %struct.test_context* %146, i32 0, i32 1
  %148 = call i32 @generate_auth_token(%struct.TYPE_10__* %145, %struct.TYPE_11__* %147)
  %149 = load %struct.test_context*, %struct.test_context** %3, align 8
  %150 = getelementptr inbounds %struct.test_context, %struct.test_context* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.test_context*, %struct.test_context** %3, align 8
  %154 = getelementptr inbounds %struct.test_context, %struct.test_context* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @strcpy(i32 %152, i32 %156)
  %158 = load %struct.test_context*, %struct.test_context** %3, align 8
  %159 = getelementptr inbounds %struct.test_context, %struct.test_context* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @now, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* @now, align 4
  br label %123

166:                                              ; preds = %123
  %167 = load %struct.test_context*, %struct.test_context** %3, align 8
  %168 = getelementptr inbounds %struct.test_context, %struct.test_context* %167, i32 0, i32 2
  %169 = load %struct.test_context*, %struct.test_context** %3, align 8
  %170 = getelementptr inbounds %struct.test_context, %struct.test_context* %169, i32 0, i32 1
  %171 = load %struct.test_context*, %struct.test_context** %3, align 8
  %172 = getelementptr inbounds %struct.test_context, %struct.test_context* %171, i32 0, i32 0
  %173 = call i32 @verify_auth_token(%struct.TYPE_10__* %168, %struct.TYPE_11__* %170, %struct.TYPE_12__* %172)
  %174 = load i32, i32* @AUTH_TOKEN_HMAC_OK, align 4
  %175 = load i32, i32* @AUTH_TOKEN_EXPIRED, align 4
  %176 = or i32 %174, %175
  %177 = call i32 @assert_int_equal(i32 %173, i32 %176)
  %178 = load %struct.test_context*, %struct.test_context** %3, align 8
  %179 = getelementptr inbounds %struct.test_context, %struct.test_context* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  store i64 0, i64* %181, align 8
  %182 = load %struct.test_context*, %struct.test_context** %3, align 8
  %183 = getelementptr inbounds %struct.test_context, %struct.test_context* %182, i32 0, i32 2
  %184 = load %struct.test_context*, %struct.test_context** %3, align 8
  %185 = getelementptr inbounds %struct.test_context, %struct.test_context* %184, i32 0, i32 1
  %186 = load %struct.test_context*, %struct.test_context** %3, align 8
  %187 = getelementptr inbounds %struct.test_context, %struct.test_context* %186, i32 0, i32 0
  %188 = call i32 @verify_auth_token(%struct.TYPE_10__* %183, %struct.TYPE_11__* %185, %struct.TYPE_12__* %187)
  %189 = load i32, i32* @AUTH_TOKEN_HMAC_OK, align 4
  %190 = call i32 @assert_int_equal(i32 %188, i32 %189)
  ret void
}

declare dso_local i32 @generate_auth_token(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @assert_int_equal(i32, i32) #1

declare dso_local i32 @verify_auth_token(%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32* @strdup(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
