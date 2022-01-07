; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_assemble_uri.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_assemble_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i32, i8* }
%struct.mbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"://\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c":%u\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"#\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_assemble_uri(%struct.mg_str* %0, %struct.mg_str* %1, %struct.mg_str* %2, i32 %3, %struct.mg_str* %4, %struct.mg_str* %5, %struct.mg_str* %6, i32 %7, %struct.mg_str* %8) #0 {
  %10 = alloca %struct.mg_str*, align 8
  %11 = alloca %struct.mg_str*, align 8
  %12 = alloca %struct.mg_str*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mg_str*, align 8
  %15 = alloca %struct.mg_str*, align 8
  %16 = alloca %struct.mg_str*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.mg_str*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.mbuf, align 8
  %21 = alloca [20 x i8], align 16
  %22 = alloca i32, align 4
  %23 = alloca %struct.mg_str, align 8
  store %struct.mg_str* %0, %struct.mg_str** %10, align 8
  store %struct.mg_str* %1, %struct.mg_str** %11, align 8
  store %struct.mg_str* %2, %struct.mg_str** %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.mg_str* %4, %struct.mg_str** %14, align 8
  store %struct.mg_str* %5, %struct.mg_str** %15, align 8
  store %struct.mg_str* %6, %struct.mg_str** %16, align 8
  store i32 %7, i32* %17, align 4
  store %struct.mg_str* %8, %struct.mg_str** %18, align 8
  store i32 -1, i32* %19, align 4
  %24 = call i32 @mbuf_init(%struct.mbuf* %20, i32 0)
  %25 = load %struct.mg_str*, %struct.mg_str** %10, align 8
  %26 = icmp ne %struct.mg_str* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %9
  %28 = load %struct.mg_str*, %struct.mg_str** %10, align 8
  %29 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.mg_str*, %struct.mg_str** %10, align 8
  %34 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.mg_str*, %struct.mg_str** %10, align 8
  %37 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @mbuf_append(%struct.mbuf* %20, i8* %35, i32 %38)
  %40 = call i32 @mbuf_append(%struct.mbuf* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  br label %41

41:                                               ; preds = %32, %27, %9
  %42 = load %struct.mg_str*, %struct.mg_str** %11, align 8
  %43 = icmp ne %struct.mg_str* %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = load %struct.mg_str*, %struct.mg_str** %11, align 8
  %46 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.mg_str*, %struct.mg_str** %11, align 8
  %51 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.mg_str*, %struct.mg_str** %11, align 8
  %54 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @mbuf_append(%struct.mbuf* %20, i8* %52, i32 %55)
  %57 = call i32 @mbuf_append(%struct.mbuf* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %58

58:                                               ; preds = %49, %44, %41
  %59 = load %struct.mg_str*, %struct.mg_str** %12, align 8
  %60 = icmp ne %struct.mg_str* %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %58
  %62 = load %struct.mg_str*, %struct.mg_str** %12, align 8
  %63 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.mg_str*, %struct.mg_str** %12, align 8
  %68 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.mg_str*, %struct.mg_str** %12, align 8
  %71 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @mbuf_append(%struct.mbuf* %20, i8* %69, i32 %72)
  br label %74

74:                                               ; preds = %66, %61, %58
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = getelementptr inbounds [20 x i8], [20 x i8]* %21, i64 0, i64 0
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @sprintf(i8* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  store i32 %80, i32* %22, align 4
  %81 = getelementptr inbounds [20 x i8], [20 x i8]* %21, i64 0, i64 0
  %82 = load i32, i32* %22, align 4
  %83 = call i32 @mbuf_append(%struct.mbuf* %20, i8* %81, i32 %82)
  br label %84

84:                                               ; preds = %77, %74
  %85 = load %struct.mg_str*, %struct.mg_str** %14, align 8
  %86 = icmp ne %struct.mg_str* %85, null
  br i1 %86, label %87, label %141

87:                                               ; preds = %84
  %88 = load %struct.mg_str*, %struct.mg_str** %14, align 8
  %89 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %141

92:                                               ; preds = %87
  %93 = load i32, i32* %17, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %132

95:                                               ; preds = %92
  %96 = load %struct.mg_str*, %struct.mg_str** %14, align 8
  %97 = bitcast %struct.mg_str* %96 to { i32, i8* }*
  %98 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %97, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call { i32, i8* } @mg_strdup(i32 %99, i8* %101)
  %103 = bitcast %struct.mg_str* %23 to { i32, i8* }*
  %104 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %103, i32 0, i32 0
  %105 = extractvalue { i32, i8* } %102, 0
  store i32 %105, i32* %104, align 8
  %106 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %103, i32 0, i32 1
  %107 = extractvalue { i32, i8* } %102, 1
  store i8* %107, i8** %106, align 8
  %108 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %23, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.mg_str*, %struct.mg_str** %14, align 8
  %111 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %95
  br label %182

115:                                              ; preds = %95
  %116 = load %struct.mg_str*, %struct.mg_str** %14, align 8
  %117 = call i32 @mg_normalize_uri_path(%struct.mg_str* %116, %struct.mg_str* %23)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %23, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @free(i8* %121)
  br label %182

123:                                              ; preds = %115
  %124 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %23, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %23, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @mbuf_append(%struct.mbuf* %20, i8* %125, i32 %127)
  %129 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %23, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @free(i8* %130)
  br label %140

132:                                              ; preds = %92
  %133 = load %struct.mg_str*, %struct.mg_str** %14, align 8
  %134 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.mg_str*, %struct.mg_str** %14, align 8
  %137 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @mbuf_append(%struct.mbuf* %20, i8* %135, i32 %138)
  br label %140

140:                                              ; preds = %132, %123
  br label %147

141:                                              ; preds = %87, %84
  %142 = load i32, i32* %17, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = call i32 @mbuf_append(%struct.mbuf* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  br label %146

146:                                              ; preds = %144, %141
  br label %147

147:                                              ; preds = %146, %140
  %148 = load %struct.mg_str*, %struct.mg_str** %15, align 8
  %149 = icmp ne %struct.mg_str* %148, null
  br i1 %149, label %150, label %164

150:                                              ; preds = %147
  %151 = load %struct.mg_str*, %struct.mg_str** %15, align 8
  %152 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %150
  %156 = call i32 @mbuf_append(%struct.mbuf* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %157 = load %struct.mg_str*, %struct.mg_str** %15, align 8
  %158 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.mg_str*, %struct.mg_str** %15, align 8
  %161 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @mbuf_append(%struct.mbuf* %20, i8* %159, i32 %162)
  br label %164

164:                                              ; preds = %155, %150, %147
  %165 = load %struct.mg_str*, %struct.mg_str** %16, align 8
  %166 = icmp ne %struct.mg_str* %165, null
  br i1 %166, label %167, label %181

167:                                              ; preds = %164
  %168 = load %struct.mg_str*, %struct.mg_str** %16, align 8
  %169 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %167
  %173 = call i32 @mbuf_append(%struct.mbuf* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %174 = load %struct.mg_str*, %struct.mg_str** %16, align 8
  %175 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %174, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.mg_str*, %struct.mg_str** %16, align 8
  %178 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @mbuf_append(%struct.mbuf* %20, i8* %176, i32 %179)
  br label %181

181:                                              ; preds = %172, %167, %164
  store i32 0, i32* %19, align 4
  br label %182

182:                                              ; preds = %181, %119, %114
  %183 = load i32, i32* %19, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %20, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = load %struct.mg_str*, %struct.mg_str** %18, align 8
  %189 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %188, i32 0, i32 1
  store i8* %187, i8** %189, align 8
  %190 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %20, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.mg_str*, %struct.mg_str** %18, align 8
  %193 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 8
  br label %200

194:                                              ; preds = %182
  %195 = call i32 @mbuf_free(%struct.mbuf* %20)
  %196 = load %struct.mg_str*, %struct.mg_str** %18, align 8
  %197 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %196, i32 0, i32 1
  store i8* null, i8** %197, align 8
  %198 = load %struct.mg_str*, %struct.mg_str** %18, align 8
  %199 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %198, i32 0, i32 0
  store i32 0, i32* %199, align 8
  br label %200

200:                                              ; preds = %194, %185
  %201 = load i32, i32* %19, align 4
  ret i32 %201
}

declare dso_local i32 @mbuf_init(%struct.mbuf*, i32) #1

declare dso_local i32 @mbuf_append(%struct.mbuf*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local { i32, i8* } @mg_strdup(i32, i8*) #1

declare dso_local i32 @mg_normalize_uri_path(%struct.mg_str*, %struct.mg_str*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @mbuf_free(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
