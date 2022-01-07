; ModuleID = '/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_var.c_gbt_var_consistent.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_var.c_gbt_var_consistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i32 (i8*, i8*, i32, i32*)*, i32 (i8*, i8*, i32, i32*)*, i32 (i8*, i8*, i32, i32*)*, i32 (i8*, i8*, i32, i32*)*, i32 (i8*, i8*, i32, i32*)*, i32 (i8*, i8*, i32, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gbt_var_consistent(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_7__* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %10, align 4
  switch i32 %16, label %237 [
    i32 130, label %17
    i32 129, label %53
    i32 133, label %89
    i32 131, label %137
    i32 132, label %173
    i32 128, label %209
  ]

17:                                               ; preds = %7
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32 (i8*, i8*, i32, i32*)*, i32 (i8*, i8*, i32, i32*)** %22, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32*, i32** %14, align 8
  %30 = call i32 %23(i8* %24, i8* %27, i32 %28, i32* %29)
  store i32 %30, i32* %15, align 4
  br label %52

31:                                               ; preds = %17
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 5
  %34 = load i32 (i8*, i8*, i32, i32*)*, i32 (i8*, i8*, i32, i32*)** %33, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32*, i32** %14, align 8
  %41 = call i32 %34(i8* %35, i8* %38, i32 %39, i32* %40)
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %31
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %47 = call i32 @gbt_var_node_pf_match(%struct.TYPE_8__* %44, i8* %45, %struct.TYPE_7__* %46)
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %43, %31
  %50 = phi i1 [ true, %31 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %15, align 4
  br label %52

52:                                               ; preds = %49, %20
  br label %238

53:                                               ; preds = %7
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32 (i8*, i8*, i32, i32*)*, i32 (i8*, i8*, i32, i32*)** %58, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32*, i32** %14, align 8
  %66 = call i32 %59(i8* %60, i8* %63, i32 %64, i32* %65)
  store i32 %66, i32* %15, align 4
  br label %88

67:                                               ; preds = %53
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 5
  %70 = load i32 (i8*, i8*, i32, i32*)*, i32 (i8*, i8*, i32, i32*)** %69, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32*, i32** %14, align 8
  %77 = call i32 %70(i8* %71, i8* %74, i32 %75, i32* %76)
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %67
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %83 = call i32 @gbt_var_node_pf_match(%struct.TYPE_8__* %80, i8* %81, %struct.TYPE_7__* %82)
  %84 = icmp ne i32 %83, 0
  br label %85

85:                                               ; preds = %79, %67
  %86 = phi i1 [ true, %67 ], [ %84, %79 ]
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %15, align 4
  br label %88

88:                                               ; preds = %85, %56
  br label %238

89:                                               ; preds = %7
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %89
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i32 (i8*, i8*, i32, i32*)*, i32 (i8*, i8*, i32, i32*)** %94, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32*, i32** %14, align 8
  %102 = call i32 %95(i8* %96, i8* %99, i32 %100, i32* %101)
  store i32 %102, i32* %15, align 4
  br label %136

103:                                              ; preds = %89
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 5
  %106 = load i32 (i8*, i8*, i32, i32*)*, i32 (i8*, i8*, i32, i32*)** %105, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load i32*, i32** %14, align 8
  %113 = call i32 %106(i8* %109, i8* %110, i32 %111, i32* %112)
  %114 = icmp sle i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %103
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 5
  %118 = load i32 (i8*, i8*, i32, i32*)*, i32 (i8*, i8*, i32, i32*)** %117, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load i32*, i32** %14, align 8
  %125 = call i32 %118(i8* %119, i8* %122, i32 %123, i32* %124)
  %126 = icmp sle i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %115, %103
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %131 = call i32 @gbt_var_node_pf_match(%struct.TYPE_8__* %128, i8* %129, %struct.TYPE_7__* %130)
  %132 = icmp ne i32 %131, 0
  br label %133

133:                                              ; preds = %127, %115
  %134 = phi i1 [ true, %115 ], [ %132, %127 ]
  %135 = zext i1 %134 to i32
  store i32 %135, i32* %15, align 4
  br label %136

136:                                              ; preds = %133, %92
  br label %238

137:                                              ; preds = %7
  %138 = load i32, i32* %12, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %137
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 3
  %143 = load i32 (i8*, i8*, i32, i32*)*, i32 (i8*, i8*, i32, i32*)** %142, align 8
  %144 = load i8*, i8** %9, align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = load i32*, i32** %14, align 8
  %150 = call i32 %143(i8* %144, i8* %147, i32 %148, i32* %149)
  store i32 %150, i32* %15, align 4
  br label %172

151:                                              ; preds = %137
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 5
  %154 = load i32 (i8*, i8*, i32, i32*)*, i32 (i8*, i8*, i32, i32*)** %153, align 8
  %155 = load i8*, i8** %9, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = load i32*, i32** %14, align 8
  %161 = call i32 %154(i8* %155, i8* %158, i32 %159, i32* %160)
  %162 = icmp sle i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %151
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %165 = load i8*, i8** %9, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %167 = call i32 @gbt_var_node_pf_match(%struct.TYPE_8__* %164, i8* %165, %struct.TYPE_7__* %166)
  %168 = icmp ne i32 %167, 0
  br label %169

169:                                              ; preds = %163, %151
  %170 = phi i1 [ true, %151 ], [ %168, %163 ]
  %171 = zext i1 %170 to i32
  store i32 %171, i32* %15, align 4
  br label %172

172:                                              ; preds = %169, %140
  br label %238

173:                                              ; preds = %7
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %173
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 4
  %179 = load i32 (i8*, i8*, i32, i32*)*, i32 (i8*, i8*, i32, i32*)** %178, align 8
  %180 = load i8*, i8** %9, align 8
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = load i32, i32* %11, align 4
  %185 = load i32*, i32** %14, align 8
  %186 = call i32 %179(i8* %180, i8* %183, i32 %184, i32* %185)
  store i32 %186, i32* %15, align 4
  br label %208

187:                                              ; preds = %173
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 5
  %190 = load i32 (i8*, i8*, i32, i32*)*, i32 (i8*, i8*, i32, i32*)** %189, align 8
  %191 = load i8*, i8** %9, align 8
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = load i32, i32* %11, align 4
  %196 = load i32*, i32** %14, align 8
  %197 = call i32 %190(i8* %191, i8* %194, i32 %195, i32* %196)
  %198 = icmp sle i32 %197, 0
  br i1 %198, label %205, label %199

199:                                              ; preds = %187
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %201 = load i8*, i8** %9, align 8
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %203 = call i32 @gbt_var_node_pf_match(%struct.TYPE_8__* %200, i8* %201, %struct.TYPE_7__* %202)
  %204 = icmp ne i32 %203, 0
  br label %205

205:                                              ; preds = %199, %187
  %206 = phi i1 [ true, %187 ], [ %204, %199 ]
  %207 = zext i1 %206 to i32
  store i32 %207, i32* %15, align 4
  br label %208

208:                                              ; preds = %205, %176
  br label %238

209:                                              ; preds = %7
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 2
  %212 = load i32 (i8*, i8*, i32, i32*)*, i32 (i8*, i8*, i32, i32*)** %211, align 8
  %213 = load i8*, i8** %9, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = load i32, i32* %11, align 4
  %218 = load i32*, i32** %14, align 8
  %219 = call i32 %212(i8* %213, i8* %216, i32 %217, i32* %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %233

221:                                              ; preds = %209
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 2
  %224 = load i32 (i8*, i8*, i32, i32*)*, i32 (i8*, i8*, i32, i32*)** %223, align 8
  %225 = load i8*, i8** %9, align 8
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 1
  %228 = load i8*, i8** %227, align 8
  %229 = load i32, i32* %11, align 4
  %230 = load i32*, i32** %14, align 8
  %231 = call i32 %224(i8* %225, i8* %228, i32 %229, i32* %230)
  %232 = icmp ne i32 %231, 0
  br label %233

233:                                              ; preds = %221, %209
  %234 = phi i1 [ false, %209 ], [ %232, %221 ]
  %235 = xor i1 %234, true
  %236 = zext i1 %235 to i32
  store i32 %236, i32* %15, align 4
  br label %238

237:                                              ; preds = %7
  store i32 0, i32* %15, align 4
  br label %238

238:                                              ; preds = %237, %233, %208, %172, %136, %88, %52
  %239 = load i32, i32* %15, align 4
  ret i32 %239
}

declare dso_local i32 @gbt_var_node_pf_match(%struct.TYPE_8__*, i8*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
