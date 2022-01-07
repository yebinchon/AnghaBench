; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_http_check_digest_auth.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_http_check_digest_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_message = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.mg_str = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Authorization\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"cnonce\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"uri\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"qop\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"nc\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"nonce\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_http_check_digest_auth(%struct.http_message* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.http_message*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mg_str*, align 8
  %9 = alloca [50 x i8], align 16
  %10 = alloca [64 x i8], align 16
  %11 = alloca [40 x i8], align 16
  %12 = alloca [200 x i8], align 16
  %13 = alloca [20 x i8], align 16
  %14 = alloca [20 x i8], align 16
  %15 = alloca [16 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store %struct.http_message* %0, %struct.http_message** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %23 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  store i8* %23, i8** %16, align 8
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  store i8* %24, i8** %17, align 8
  %25 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 0
  store i8* %25, i8** %18, align 8
  %26 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i64 0, i64 0
  store i8* %26, i8** %19, align 8
  %27 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  store i8* %27, i8** %20, align 8
  %28 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  store i8* %28, i8** %21, align 8
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  store i8* %29, i8** %22, align 8
  %30 = load %struct.http_message*, %struct.http_message** %4, align 8
  %31 = icmp eq %struct.http_message* %30, null
  br i1 %31, label %71, label %32

32:                                               ; preds = %3
  %33 = load i32*, i32** %6, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %71, label %35

35:                                               ; preds = %32
  %36 = load %struct.http_message*, %struct.http_message** %4, align 8
  %37 = call %struct.mg_str* @mg_get_http_header(%struct.http_message* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.mg_str* %37, %struct.mg_str** %8, align 8
  %38 = icmp eq %struct.mg_str* %37, null
  br i1 %38, label %71, label %39

39:                                               ; preds = %35
  %40 = load %struct.mg_str*, %struct.mg_str** %8, align 8
  %41 = call i64 @mg_http_parse_header2(%struct.mg_str* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %16, i32 50)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %71, label %43

43:                                               ; preds = %39
  %44 = load %struct.mg_str*, %struct.mg_str** %8, align 8
  %45 = call i64 @mg_http_parse_header2(%struct.mg_str* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %17, i32 64)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %71, label %47

47:                                               ; preds = %43
  %48 = load %struct.mg_str*, %struct.mg_str** %8, align 8
  %49 = call i64 @mg_http_parse_header2(%struct.mg_str* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %18, i32 40)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %71, label %51

51:                                               ; preds = %47
  %52 = load %struct.mg_str*, %struct.mg_str** %8, align 8
  %53 = call i64 @mg_http_parse_header2(%struct.mg_str* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %19, i32 200)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %51
  %56 = load %struct.mg_str*, %struct.mg_str** %8, align 8
  %57 = call i64 @mg_http_parse_header2(%struct.mg_str* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %20, i32 20)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %55
  %60 = load %struct.mg_str*, %struct.mg_str** %8, align 8
  %61 = call i64 @mg_http_parse_header2(%struct.mg_str* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %21, i32 20)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %59
  %64 = load %struct.mg_str*, %struct.mg_str** %8, align 8
  %65 = call i64 @mg_http_parse_header2(%struct.mg_str* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %22, i32 16)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i8*, i8** %22, align 8
  %69 = call i64 @mg_check_nonce(i8* %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %63, %59, %55, %51, %47, %43, %39, %35, %32, %3
  store i32 0, i32* %7, align 4
  br label %116

72:                                               ; preds = %67
  %73 = load %struct.http_message*, %struct.http_message** %4, align 8
  %74 = getelementptr inbounds %struct.http_message, %struct.http_message* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.http_message*, %struct.http_message** %4, align 8
  %77 = getelementptr inbounds %struct.http_message, %struct.http_message* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.http_message*, %struct.http_message** %4, align 8
  %81 = getelementptr inbounds %struct.http_message, %struct.http_message* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.http_message*, %struct.http_message** %4, align 8
  %85 = getelementptr inbounds %struct.http_message, %struct.http_message* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %72
  %90 = load %struct.http_message*, %struct.http_message** %4, align 8
  %91 = getelementptr inbounds %struct.http_message, %struct.http_message* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 1
  br label %96

95:                                               ; preds = %72
  br label %96

96:                                               ; preds = %95, %89
  %97 = phi i64 [ %94, %89 ], [ 0, %95 ]
  %98 = add nsw i64 %83, %97
  %99 = call i32 @mg_mk_str_n(i32 %79, i64 %98)
  %100 = load i8*, i8** %16, align 8
  %101 = call i32 @mg_mk_str(i8* %100)
  %102 = load i8*, i8** %17, align 8
  %103 = call i32 @mg_mk_str(i8* %102)
  %104 = load i8*, i8** %18, align 8
  %105 = call i32 @mg_mk_str(i8* %104)
  %106 = load i8*, i8** %20, align 8
  %107 = call i32 @mg_mk_str(i8* %106)
  %108 = load i8*, i8** %21, align 8
  %109 = call i32 @mg_mk_str(i8* %108)
  %110 = load i8*, i8** %22, align 8
  %111 = call i32 @mg_mk_str(i8* %110)
  %112 = load i8*, i8** %5, align 8
  %113 = call i32 @mg_mk_str(i8* %112)
  %114 = load i32*, i32** %6, align 8
  %115 = call i32 @mg_check_digest_auth(i32 %75, i32 %99, i32 %101, i32 %103, i32 %105, i32 %107, i32 %109, i32 %111, i32 %113, i32* %114)
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %96, %71
  %117 = load i8*, i8** %16, align 8
  %118 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %119 = icmp ne i8* %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i8*, i8** %16, align 8
  %122 = call i32 @MG_FREE(i8* %121)
  br label %123

123:                                              ; preds = %120, %116
  %124 = load i8*, i8** %17, align 8
  %125 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %126 = icmp ne i8* %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i8*, i8** %17, align 8
  %129 = call i32 @MG_FREE(i8* %128)
  br label %130

130:                                              ; preds = %127, %123
  %131 = load i8*, i8** %18, align 8
  %132 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 0
  %133 = icmp ne i8* %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i8*, i8** %18, align 8
  %136 = call i32 @MG_FREE(i8* %135)
  br label %137

137:                                              ; preds = %134, %130
  %138 = load i8*, i8** %19, align 8
  %139 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i64 0, i64 0
  %140 = icmp ne i8* %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i8*, i8** %19, align 8
  %143 = call i32 @MG_FREE(i8* %142)
  br label %144

144:                                              ; preds = %141, %137
  %145 = load i8*, i8** %20, align 8
  %146 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %147 = icmp ne i8* %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load i8*, i8** %20, align 8
  %150 = call i32 @MG_FREE(i8* %149)
  br label %151

151:                                              ; preds = %148, %144
  %152 = load i8*, i8** %21, align 8
  %153 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %154 = icmp ne i8* %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load i8*, i8** %21, align 8
  %157 = call i32 @MG_FREE(i8* %156)
  br label %158

158:                                              ; preds = %155, %151
  %159 = load i8*, i8** %22, align 8
  %160 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %161 = icmp ne i8* %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = load i8*, i8** %22, align 8
  %164 = call i32 @MG_FREE(i8* %163)
  br label %165

165:                                              ; preds = %162, %158
  %166 = load i32, i32* %7, align 4
  ret i32 %166
}

declare dso_local %struct.mg_str* @mg_get_http_header(%struct.http_message*, i8*) #1

declare dso_local i64 @mg_http_parse_header2(%struct.mg_str*, i8*, i8**, i32) #1

declare dso_local i64 @mg_check_nonce(i8*) #1

declare dso_local i32 @mg_check_digest_auth(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @mg_mk_str_n(i32, i64) #1

declare dso_local i32 @mg_mk_str(i8*) #1

declare dso_local i32 @MG_FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
