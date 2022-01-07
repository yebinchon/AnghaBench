; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_restrict_and_check_grant.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_restrict_and_check_grant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACL_ALL_RIGHTS_COLUMN = common dso_local global i64 0, align 8
@ACL_ALL_RIGHTS_RELATION = common dso_local global i64 0, align 8
@ACL_ALL_RIGHTS_SEQUENCE = common dso_local global i64 0, align 8
@ACL_ALL_RIGHTS_DATABASE = common dso_local global i64 0, align 8
@ACL_ALL_RIGHTS_FUNCTION = common dso_local global i64 0, align 8
@ACL_ALL_RIGHTS_LANGUAGE = common dso_local global i64 0, align 8
@ACL_ALL_RIGHTS_LARGEOBJECT = common dso_local global i64 0, align 8
@ACL_ALL_RIGHTS_SCHEMA = common dso_local global i64 0, align 8
@ACL_ALL_RIGHTS_TABLESPACE = common dso_local global i64 0, align 8
@ACL_ALL_RIGHTS_FDW = common dso_local global i64 0, align 8
@ACL_ALL_RIGHTS_FOREIGN_SERVER = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"grantable rights not supported for event triggers\00", align 1
@ACL_NO_RIGHTS = common dso_local global i64 0, align 8
@ACL_ALL_RIGHTS_TYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"unrecognized object type: %d\00", align 1
@ACLMASK_ANY = common dso_local global i32 0, align 4
@ACLCHECK_NO_PRIV = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@ERRCODE_WARNING_PRIVILEGE_NOT_GRANTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"no privileges were granted for column \22%s\22 of relation \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"no privileges were granted for \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"not all privileges were granted for column \22%s\22 of relation \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"not all privileges were granted for \22%s\22\00", align 1
@ERRCODE_WARNING_PRIVILEGE_NOT_REVOKED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [64 x i8] c"no privileges could be revoked for column \22%s\22 of relation \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"no privileges could be revoked for \22%s\22\00", align 1
@.str.8 = private unnamed_addr constant [69 x i8] c"not all privileges could be revoked for column \22%s\22 of relation \22%s\22\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"not all privileges could be revoked for \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i32, i64, i32, i32, i32, i8*, i32, i8*)* @restrict_and_check_grant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @restrict_and_check_grant(i32 %0, i64 %1, i32 %2, i64 %3, i32 %4, i32 %5, i32 %6, i8* %7, i32 %8, i8* %9) #0 {
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32 %0, i32* %12, align 4
  store i64 %1, i64* %13, align 8
  store i32 %2, i32* %14, align 4
  store i64 %3, i64* %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i32 %8, i32* %20, align 4
  store i8* %9, i8** %21, align 8
  %24 = load i32, i32* %18, align 4
  switch i32 %24, label %53 [
    i32 140, label %25
    i32 130, label %27
    i32 131, label %29
    i32 139, label %31
    i32 135, label %33
    i32 134, label %35
    i32 133, label %37
    i32 132, label %39
    i32 129, label %41
    i32 137, label %43
    i32 136, label %45
    i32 138, label %47
    i32 128, label %51
  ]

25:                                               ; preds = %10
  %26 = load i64, i64* @ACL_ALL_RIGHTS_COLUMN, align 8
  store i64 %26, i64* %23, align 8
  br label %58

27:                                               ; preds = %10
  %28 = load i64, i64* @ACL_ALL_RIGHTS_RELATION, align 8
  store i64 %28, i64* %23, align 8
  br label %58

29:                                               ; preds = %10
  %30 = load i64, i64* @ACL_ALL_RIGHTS_SEQUENCE, align 8
  store i64 %30, i64* %23, align 8
  br label %58

31:                                               ; preds = %10
  %32 = load i64, i64* @ACL_ALL_RIGHTS_DATABASE, align 8
  store i64 %32, i64* %23, align 8
  br label %58

33:                                               ; preds = %10
  %34 = load i64, i64* @ACL_ALL_RIGHTS_FUNCTION, align 8
  store i64 %34, i64* %23, align 8
  br label %58

35:                                               ; preds = %10
  %36 = load i64, i64* @ACL_ALL_RIGHTS_LANGUAGE, align 8
  store i64 %36, i64* %23, align 8
  br label %58

37:                                               ; preds = %10
  %38 = load i64, i64* @ACL_ALL_RIGHTS_LARGEOBJECT, align 8
  store i64 %38, i64* %23, align 8
  br label %58

39:                                               ; preds = %10
  %40 = load i64, i64* @ACL_ALL_RIGHTS_SCHEMA, align 8
  store i64 %40, i64* %23, align 8
  br label %58

41:                                               ; preds = %10
  %42 = load i64, i64* @ACL_ALL_RIGHTS_TABLESPACE, align 8
  store i64 %42, i64* %23, align 8
  br label %58

43:                                               ; preds = %10
  %44 = load i64, i64* @ACL_ALL_RIGHTS_FDW, align 8
  store i64 %44, i64* %23, align 8
  br label %58

45:                                               ; preds = %10
  %46 = load i64, i64* @ACL_ALL_RIGHTS_FOREIGN_SERVER, align 8
  store i64 %46, i64* %23, align 8
  br label %58

47:                                               ; preds = %10
  %48 = load i32, i32* @ERROR, align 4
  %49 = call i32 (i32, i8*, ...) @elog(i32 %48, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %50 = load i64, i64* @ACL_NO_RIGHTS, align 8
  store i64 %50, i64* %11, align 8
  br label %215

51:                                               ; preds = %10
  %52 = load i64, i64* @ACL_ALL_RIGHTS_TYPE, align 8
  store i64 %52, i64* %23, align 8
  br label %58

53:                                               ; preds = %10
  %54 = load i32, i32* @ERROR, align 4
  %55 = load i32, i32* %18, align 4
  %56 = call i32 (i32, i8*, ...) @elog(i32 %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i64, i64* @ACL_NO_RIGHTS, align 8
  store i64 %57, i64* %11, align 8
  br label %215

58:                                               ; preds = %51, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* @ACL_NO_RIGHTS, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %94

62:                                               ; preds = %58
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %20, align 4
  %66 = load i32, i32* %17, align 4
  %67 = load i64, i64* %23, align 8
  %68 = load i64, i64* %23, align 8
  %69 = call i64 @ACL_GRANT_OPTION_FOR(i64 %68)
  %70 = or i64 %67, %69
  %71 = load i32, i32* @ACLMASK_ANY, align 4
  %72 = call i64 @pg_aclmask(i32 %63, i32 %64, i32 %65, i32 %66, i64 %70, i32 %71)
  %73 = load i64, i64* @ACL_NO_RIGHTS, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %62
  %76 = load i32, i32* %18, align 4
  %77 = icmp eq i32 %76, 140
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load i8*, i8** %21, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i32, i32* @ACLCHECK_NO_PRIV, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load i8*, i8** %19, align 8
  %85 = load i8*, i8** %21, align 8
  %86 = call i32 @aclcheck_error_col(i32 %82, i32 %83, i8* %84, i8* %85)
  br label %92

87:                                               ; preds = %78, %75
  %88 = load i32, i32* @ACLCHECK_NO_PRIV, align 4
  %89 = load i32, i32* %18, align 4
  %90 = load i8*, i8** %19, align 8
  %91 = call i32 @aclcheck_error(i32 %88, i32 %89, i8* %90)
  br label %92

92:                                               ; preds = %87, %81
  br label %93

93:                                               ; preds = %92, %62
  br label %94

94:                                               ; preds = %93, %58
  %95 = load i64, i64* %15, align 8
  %96 = load i64, i64* %13, align 8
  %97 = call i64 @ACL_OPTION_TO_PRIVS(i64 %96)
  %98 = and i64 %95, %97
  store i64 %98, i64* %22, align 8
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %157

101:                                              ; preds = %94
  %102 = load i64, i64* %22, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %126

104:                                              ; preds = %101
  %105 = load i32, i32* %18, align 4
  %106 = icmp eq i32 %105, 140
  br i1 %106, label %107, label %118

107:                                              ; preds = %104
  %108 = load i8*, i8** %21, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = load i32, i32* @WARNING, align 4
  %112 = load i32, i32* @ERRCODE_WARNING_PRIVILEGE_NOT_GRANTED, align 4
  %113 = call i32 @errcode(i32 %112)
  %114 = load i8*, i8** %21, align 8
  %115 = load i8*, i8** %19, align 8
  %116 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i8* %114, i8* %115)
  %117 = call i32 @ereport(i32 %111, i32 %116)
  br label %125

118:                                              ; preds = %107, %104
  %119 = load i32, i32* @WARNING, align 4
  %120 = load i32, i32* @ERRCODE_WARNING_PRIVILEGE_NOT_GRANTED, align 4
  %121 = call i32 @errcode(i32 %120)
  %122 = load i8*, i8** %19, align 8
  %123 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %122)
  %124 = call i32 @ereport(i32 %119, i32 %123)
  br label %125

125:                                              ; preds = %118, %110
  br label %156

126:                                              ; preds = %101
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %155, label %129

129:                                              ; preds = %126
  %130 = load i64, i64* %22, align 8
  %131 = load i64, i64* %15, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %155

133:                                              ; preds = %129
  %134 = load i32, i32* %18, align 4
  %135 = icmp eq i32 %134, 140
  br i1 %135, label %136, label %147

136:                                              ; preds = %133
  %137 = load i8*, i8** %21, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %147

139:                                              ; preds = %136
  %140 = load i32, i32* @WARNING, align 4
  %141 = load i32, i32* @ERRCODE_WARNING_PRIVILEGE_NOT_GRANTED, align 4
  %142 = call i32 @errcode(i32 %141)
  %143 = load i8*, i8** %21, align 8
  %144 = load i8*, i8** %19, align 8
  %145 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i8* %143, i8* %144)
  %146 = call i32 @ereport(i32 %140, i32 %145)
  br label %154

147:                                              ; preds = %136, %133
  %148 = load i32, i32* @WARNING, align 4
  %149 = load i32, i32* @ERRCODE_WARNING_PRIVILEGE_NOT_GRANTED, align 4
  %150 = call i32 @errcode(i32 %149)
  %151 = load i8*, i8** %19, align 8
  %152 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %151)
  %153 = call i32 @ereport(i32 %148, i32 %152)
  br label %154

154:                                              ; preds = %147, %139
  br label %155

155:                                              ; preds = %154, %129, %126
  br label %156

156:                                              ; preds = %155, %125
  br label %213

157:                                              ; preds = %94
  %158 = load i64, i64* %22, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %182

160:                                              ; preds = %157
  %161 = load i32, i32* %18, align 4
  %162 = icmp eq i32 %161, 140
  br i1 %162, label %163, label %174

163:                                              ; preds = %160
  %164 = load i8*, i8** %21, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %174

166:                                              ; preds = %163
  %167 = load i32, i32* @WARNING, align 4
  %168 = load i32, i32* @ERRCODE_WARNING_PRIVILEGE_NOT_REVOKED, align 4
  %169 = call i32 @errcode(i32 %168)
  %170 = load i8*, i8** %21, align 8
  %171 = load i8*, i8** %19, align 8
  %172 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), i8* %170, i8* %171)
  %173 = call i32 @ereport(i32 %167, i32 %172)
  br label %181

174:                                              ; preds = %163, %160
  %175 = load i32, i32* @WARNING, align 4
  %176 = load i32, i32* @ERRCODE_WARNING_PRIVILEGE_NOT_REVOKED, align 4
  %177 = call i32 @errcode(i32 %176)
  %178 = load i8*, i8** %19, align 8
  %179 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %178)
  %180 = call i32 @ereport(i32 %175, i32 %179)
  br label %181

181:                                              ; preds = %174, %166
  br label %212

182:                                              ; preds = %157
  %183 = load i32, i32* %14, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %211, label %185

185:                                              ; preds = %182
  %186 = load i64, i64* %22, align 8
  %187 = load i64, i64* %15, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %211

189:                                              ; preds = %185
  %190 = load i32, i32* %18, align 4
  %191 = icmp eq i32 %190, 140
  br i1 %191, label %192, label %203

192:                                              ; preds = %189
  %193 = load i8*, i8** %21, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %203

195:                                              ; preds = %192
  %196 = load i32, i32* @WARNING, align 4
  %197 = load i32, i32* @ERRCODE_WARNING_PRIVILEGE_NOT_REVOKED, align 4
  %198 = call i32 @errcode(i32 %197)
  %199 = load i8*, i8** %21, align 8
  %200 = load i8*, i8** %19, align 8
  %201 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.8, i64 0, i64 0), i8* %199, i8* %200)
  %202 = call i32 @ereport(i32 %196, i32 %201)
  br label %210

203:                                              ; preds = %192, %189
  %204 = load i32, i32* @WARNING, align 4
  %205 = load i32, i32* @ERRCODE_WARNING_PRIVILEGE_NOT_REVOKED, align 4
  %206 = call i32 @errcode(i32 %205)
  %207 = load i8*, i8** %19, align 8
  %208 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i8* %207)
  %209 = call i32 @ereport(i32 %204, i32 %208)
  br label %210

210:                                              ; preds = %203, %195
  br label %211

211:                                              ; preds = %210, %185, %182
  br label %212

212:                                              ; preds = %211, %181
  br label %213

213:                                              ; preds = %212, %156
  %214 = load i64, i64* %22, align 8
  store i64 %214, i64* %11, align 8
  br label %215

215:                                              ; preds = %213, %53, %47
  %216 = load i64, i64* %11, align 8
  ret i64 %216
}

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i64 @pg_aclmask(i32, i32, i32, i32, i64, i32) #1

declare dso_local i64 @ACL_GRANT_OPTION_FOR(i64) #1

declare dso_local i32 @aclcheck_error_col(i32, i32, i8*, i8*) #1

declare dso_local i32 @aclcheck_error(i32, i32, i8*) #1

declare dso_local i64 @ACL_OPTION_TO_PRIVS(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
