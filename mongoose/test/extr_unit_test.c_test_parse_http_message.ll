; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_parse_http_message.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_parse_http_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i32, i32 }
%struct.http_message = type { %struct.TYPE_9__, %struct.TYPE_10__, i32, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32, i32 }

@test_parse_http_message.a = internal global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [17 x i8] c"GET / HTTP/1.0\0A\0A\00", align 1
@test_parse_http_message.b = internal global i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"GET /blah HTTP/1.0\0D\0AFoo:  bar  \0D\0A\0D\0A\00", align 1
@test_parse_http_message.c = internal global i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"get b c\0Az:  k \0Ab: t\0Avvv\0A\0A xx\00", align 1
@test_parse_http_message.d = internal global i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"a b c\0AContent-Length: 21 \0Ab: t\0Avvv\0A\0A\00", align 1
@test_parse_http_message.e = internal global i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"GET /foo?a=b&c=d HTTP/1.0\0A\0A\00", align 1
@test_parse_http_message.f = internal global i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"POST /x HTTP/1.0\0A\0A\00", align 1
@test_parse_http_message.g = internal global i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"WOHOO /x HTTP/1.0\0A\0A\00", align 1
@test_parse_http_message.h = internal global i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), align 8
@.str.7 = private unnamed_addr constant [18 x i8] c"HTTP/1.0 200 OK\0A\0A\00", align 1
@test_parse_http_message.i = internal global i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"HTTP/1.0 999 OMGWTFBBQ\0A\0A\00", align 1
@test_parse_http_message.j = internal global i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.9, i32 0, i32 0), align 8
@.str.9 = private unnamed_addr constant [80 x i8] c"GET / HTTP/1.0\0D\0AHost: 127.0.0.1:18888\0D\0ACookie:\0D\0AX-PlayID: 45455\0D\0ARange: 0-1\0D\0A\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"\0823\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"get\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"contENT-Length\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"21\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"/foo\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"a=b&c=d\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"HTTP/1.0\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"Cookie\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"Range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_parse_http_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_parse_http_message() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.mg_str*, align 8
  %4 = alloca %struct.http_message, align 8
  %5 = load i8*, i8** @test_parse_http_message.b, align 8
  %6 = call i32 @strlen(i8* %5)
  store i32 %6, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %16, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load i8*, i8** @test_parse_http_message.b, align 8
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @mg_parse_http(i8* %12, i32 %13, %struct.http_message* %4, i32 1)
  %15 = call i32 @ASSERT_EQ(i32 %14, i32 0)
  br label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %7

19:                                               ; preds = %7
  %20 = call i32 @mg_parse_http(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 3, %struct.http_message* %4, i32 1)
  %21 = call i32 @ASSERT_EQ(i32 %20, i32 -1)
  %22 = call i32 @mg_parse_http(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 3, %struct.http_message* %4, i32 0)
  %23 = call i32 @ASSERT_EQ(i32 %22, i32 -1)
  %24 = call i32 @mg_parse_http(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 5, %struct.http_message* %4, i32 1)
  %25 = call i32 @ASSERT_EQ(i32 %24, i32 -1)
  %26 = call i32 @mg_parse_http(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 5, %struct.http_message* %4, i32 0)
  %27 = call i32 @ASSERT_EQ(i32 %26, i32 -1)
  %28 = load i8*, i8** @test_parse_http_message.a, align 8
  %29 = load i8*, i8** @test_parse_http_message.a, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = sub nsw i32 %30, 1
  %32 = call i32 @mg_parse_http(i8* %28, i32 %31, %struct.http_message* %4, i32 1)
  %33 = call i32 @ASSERT_EQ(i32 %32, i32 0)
  %34 = load i8*, i8** @test_parse_http_message.a, align 8
  %35 = load i8*, i8** @test_parse_http_message.a, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = call i32 @mg_parse_http(i8* %34, i32 %36, %struct.http_message* %4, i32 0)
  %38 = call i32 @ASSERT_EQ(i32 %37, i32 -1)
  %39 = load i8*, i8** @test_parse_http_message.a, align 8
  %40 = load i8*, i8** @test_parse_http_message.a, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = call i32 @mg_parse_http(i8* %39, i32 %41, %struct.http_message* %4, i32 1)
  %43 = load i8*, i8** @test_parse_http_message.a, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = call i32 @ASSERT_EQ(i32 %42, i32 %44)
  %46 = getelementptr inbounds %struct.http_message, %struct.http_message* %4, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** @test_parse_http_message.a, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = call i32 @ASSERT_EQ(i32 %48, i32 %50)
  %52 = getelementptr inbounds %struct.http_message, %struct.http_message* %4, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ASSERT_EQ(i32 %54, i32 0)
  %56 = load i8*, i8** @test_parse_http_message.b, align 8
  %57 = load i8*, i8** @test_parse_http_message.b, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = call i32 @mg_parse_http(i8* %56, i32 %58, %struct.http_message* %4, i32 0)
  %60 = call i32 @ASSERT_EQ(i32 %59, i32 -1)
  %61 = load i8*, i8** @test_parse_http_message.b, align 8
  %62 = load i8*, i8** @test_parse_http_message.b, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = call i32 @mg_parse_http(i8* %61, i32 %63, %struct.http_message* %4, i32 1)
  %65 = load i8*, i8** @test_parse_http_message.b, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = call i32 @ASSERT_EQ(i32 %64, i32 %66)
  %68 = getelementptr inbounds %struct.http_message, %struct.http_message* %4, i32 0, i32 7
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ASSERT_EQ(i32 %72, i32 3)
  %74 = getelementptr inbounds %struct.http_message, %struct.http_message* %4, i32 0, i32 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ASSERT_EQ(i32 %78, i32 3)
  %80 = getelementptr inbounds %struct.http_message, %struct.http_message* %4, i32 0, i32 7
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  %86 = zext i1 %85 to i32
  %87 = call i32 @ASSERT(i32 %86)
  %88 = getelementptr inbounds %struct.http_message, %struct.http_message* %4, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @ASSERT_EQ(i32 %90, i32 0)
  %92 = getelementptr inbounds %struct.http_message, %struct.http_message* %4, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i8*, i8** @test_parse_http_message.b, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = call i32 @ASSERT_EQ(i32 %94, i32 %96)
  %98 = getelementptr inbounds %struct.http_message, %struct.http_message* %4, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @ASSERT_EQ(i32 %100, i32 0)
  %102 = load i8*, i8** @test_parse_http_message.c, align 8
  %103 = load i8*, i8** @test_parse_http_message.c, align 8
  %104 = call i32 @strlen(i8* %103)
  %105 = call i32 @mg_parse_http(i8* %102, i32 %104, %struct.http_message* %4, i32 1)
  %106 = load i8*, i8** @test_parse_http_message.c, align 8
  %107 = call i32 @strlen(i8* %106)
  %108 = sub nsw i32 %107, 3
  %109 = call i32 @ASSERT_EQ(i32 %105, i32 %108)
  %110 = getelementptr inbounds %struct.http_message, %struct.http_message* %4, i32 0, i32 7
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 2
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = icmp eq i32* %114, null
  %116 = zext i1 %115 to i32
  %117 = call i32 @ASSERT(i32 %116)
  %118 = getelementptr inbounds %struct.http_message, %struct.http_message* %4, i32 0, i32 7
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  %124 = zext i1 %123 to i32
  %125 = call i32 @ASSERT(i32 %124)
  %126 = getelementptr inbounds %struct.http_message, %struct.http_message* %4, i32 0, i32 7
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 1
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = icmp ne i32* %130, null
  %132 = zext i1 %131 to i32
  %133 = call i32 @ASSERT(i32 %132)
  %134 = getelementptr inbounds %struct.http_message, %struct.http_message* %4, i32 0, i32 8
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i64 1
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @memcmp(i32 %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 1)
  %140 = call i32 @ASSERT_EQ(i32 %139, i32 0)
  %141 = getelementptr inbounds %struct.http_message, %struct.http_message* %4, i32 0, i32 7
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i64 1
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @ASSERT_EQ(i32 %145, i32 1)
  %147 = getelementptr inbounds %struct.http_message, %struct.http_message* %4, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @ASSERT_EQ(i32 %149, i32 0)
  %151 = load i8*, i8** @test_parse_http_message.d, align 8
  %152 = load i8*, i8** @test_parse_http_message.d, align 8
  %153 = call i32 @strlen(i8* %152)
  %154 = call i32 @mg_parse_http(i8* %151, i32 %153, %struct.http_message* %4, i32 1)
  %155 = load i8*, i8** @test_parse_http_message.d, align 8
  %156 = call i32 @strlen(i8* %155)
  %157 = call i32 @ASSERT_EQ(i32 %154, i32 %156)
  %158 = getelementptr inbounds %struct.http_message, %struct.http_message* %4, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @ASSERT_EQ(i32 %160, i32 21)
  %162 = getelementptr inbounds %struct.http_message, %struct.http_message* %4, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i8*, i8** @test_parse_http_message.d, align 8
  %166 = call i32 @strlen(i8* %165)
  %167 = add nsw i32 21, %166
  %168 = call i32 @ASSERT_EQ(i32 %164, i32 %167)
  %169 = call %struct.mg_str* @mg_get_http_header(%struct.http_message* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %170 = icmp eq %struct.mg_str* %169, null
  %171 = zext i1 %170 to i32
  %172 = call i32 @ASSERT(i32 %171)
  %173 = call %struct.mg_str* @mg_get_http_header(%struct.http_message* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  store %struct.mg_str* %173, %struct.mg_str** %3, align 8
  %174 = icmp ne %struct.mg_str* %173, null
  %175 = zext i1 %174 to i32
  %176 = call i32 @ASSERT(i32 %175)
  %177 = load %struct.mg_str*, %struct.mg_str** %3, align 8
  %178 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @ASSERT_EQ(i32 %179, i32 2)
  %181 = load %struct.mg_str*, %struct.mg_str** %3, align 8
  %182 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @ASSERT_STREQ_NZ(i32 %183, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %185 = load i8*, i8** @test_parse_http_message.e, align 8
  %186 = load i8*, i8** @test_parse_http_message.e, align 8
  %187 = call i32 @strlen(i8* %186)
  %188 = call i32 @mg_parse_http(i8* %185, i32 %187, %struct.http_message* %4, i32 1)
  %189 = load i8*, i8** @test_parse_http_message.e, align 8
  %190 = call i32 @strlen(i8* %189)
  %191 = call i32 @ASSERT_EQ(i32 %188, i32 %190)
  %192 = getelementptr inbounds %struct.http_message, %struct.http_message* %4, i32 0, i32 5
  %193 = call i32 @mg_vcmp(%struct.TYPE_10__* %192, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %194 = call i32 @ASSERT_EQ(i32 %193, i32 0)
  %195 = getelementptr inbounds %struct.http_message, %struct.http_message* %4, i32 0, i32 4
  %196 = call i32 @mg_vcmp(%struct.TYPE_10__* %195, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %197 = call i32 @ASSERT_EQ(i32 %196, i32 0)
  %198 = load i8*, i8** @test_parse_http_message.f, align 8
  %199 = load i8*, i8** @test_parse_http_message.f, align 8
  %200 = call i32 @strlen(i8* %199)
  %201 = call i32 @mg_parse_http(i8* %198, i32 %200, %struct.http_message* %4, i32 1)
  %202 = load i8*, i8** @test_parse_http_message.f, align 8
  %203 = call i32 @strlen(i8* %202)
  %204 = call i32 @ASSERT_EQ(i32 %201, i32 %203)
  %205 = getelementptr inbounds %struct.http_message, %struct.http_message* %4, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @ASSERT_EQ64(i32 %207, i64 -1)
  %209 = load i8*, i8** @test_parse_http_message.g, align 8
  %210 = load i8*, i8** @test_parse_http_message.g, align 8
  %211 = call i32 @strlen(i8* %210)
  %212 = call i32 @mg_parse_http(i8* %209, i32 %211, %struct.http_message* %4, i32 1)
  %213 = load i8*, i8** @test_parse_http_message.g, align 8
  %214 = call i32 @strlen(i8* %213)
  %215 = call i32 @ASSERT_EQ(i32 %212, i32 %214)
  %216 = getelementptr inbounds %struct.http_message, %struct.http_message* %4, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @ASSERT_EQ(i32 %218, i32 0)
  %220 = load i8*, i8** @test_parse_http_message.h, align 8
  %221 = load i8*, i8** @test_parse_http_message.h, align 8
  %222 = call i32 @strlen(i8* %221)
  %223 = call i32 @mg_parse_http(i8* %220, i32 %222, %struct.http_message* %4, i32 0)
  %224 = load i8*, i8** @test_parse_http_message.h, align 8
  %225 = call i32 @strlen(i8* %224)
  %226 = call i32 @ASSERT_EQ(i32 %223, i32 %225)
  %227 = getelementptr inbounds %struct.http_message, %struct.http_message* %4, i32 0, i32 3
  %228 = call i32 @mg_vcmp(%struct.TYPE_10__* %227, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %229 = call i32 @ASSERT_EQ(i32 %228, i32 0)
  %230 = getelementptr inbounds %struct.http_message, %struct.http_message* %4, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @ASSERT_EQ(i32 %231, i32 200)
  %233 = getelementptr inbounds %struct.http_message, %struct.http_message* %4, i32 0, i32 1
  %234 = call i32 @mg_vcmp(%struct.TYPE_10__* %233, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  %235 = call i32 @ASSERT_EQ(i32 %234, i32 0)
  %236 = getelementptr inbounds %struct.http_message, %struct.http_message* %4, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @ASSERT_EQ64(i32 %238, i64 -1)
  %240 = load i8*, i8** @test_parse_http_message.i, align 8
  %241 = load i8*, i8** @test_parse_http_message.i, align 8
  %242 = call i32 @strlen(i8* %241)
  %243 = call i32 @mg_parse_http(i8* %240, i32 %242, %struct.http_message* %4, i32 0)
  %244 = call i32 @ASSERT_EQ(i32 %243, i32 -1)
  %245 = load i8*, i8** @test_parse_http_message.j, align 8
  %246 = load i8*, i8** @test_parse_http_message.j, align 8
  %247 = call i32 @strlen(i8* %246)
  %248 = call i32 @mg_parse_http(i8* %245, i32 %247, %struct.http_message* %4, i32 1)
  %249 = load i8*, i8** @test_parse_http_message.j, align 8
  %250 = call i32 @strlen(i8* %249)
  %251 = call i32 @ASSERT_EQ(i32 %248, i32 %250)
  %252 = call %struct.mg_str* @mg_get_http_header(%struct.http_message* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %253 = icmp ne %struct.mg_str* %252, null
  %254 = zext i1 %253 to i32
  %255 = call i32 @ASSERT(i32 %254)
  %256 = call %struct.mg_str* @mg_get_http_header(%struct.http_message* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  %257 = icmp eq %struct.mg_str* %256, null
  %258 = zext i1 %257 to i32
  %259 = call i32 @ASSERT(i32 %258)
  %260 = call %struct.mg_str* @mg_get_http_header(%struct.http_message* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %261 = icmp ne %struct.mg_str* %260, null
  %262 = zext i1 %261 to i32
  %263 = call i32 @ASSERT(i32 %262)
  ret i8* null
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ASSERT_EQ(i32, i32) #1

declare dso_local i32 @mg_parse_http(i8*, i32, %struct.http_message*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local %struct.mg_str* @mg_get_http_header(%struct.http_message*, i8*) #1

declare dso_local i32 @ASSERT_STREQ_NZ(i32, i8*) #1

declare dso_local i32 @mg_vcmp(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @ASSERT_EQ64(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
