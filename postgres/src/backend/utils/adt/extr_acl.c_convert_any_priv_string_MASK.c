#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  text ;
struct TYPE_3__ {scalar_t__ name; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ priv_map ;
typedef  int /*<<< orphan*/  AclMode ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (scalar_t__,char*) ; 
 char* FUNC6 (char*,char) ; 
 int FUNC7 (char*) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static AclMode
FUNC9(text *priv_type_text,
						const priv_map *privileges)
{
	AclMode		result = 0;
	char	   *priv_type = FUNC8(priv_type_text);
	char	   *chunk;
	char	   *next_chunk;

	/* We rely on priv_type being a private, modifiable string */
	for (chunk = priv_type; chunk; chunk = next_chunk)
	{
		int			chunk_len;
		const priv_map *this_priv;

		/* Split string at commas */
		next_chunk = FUNC6(chunk, ',');
		if (next_chunk)
			*next_chunk++ = '\0';

		/* Drop leading/trailing whitespace in this chunk */
		while (*chunk && FUNC3((unsigned char) *chunk))
			chunk++;
		chunk_len = FUNC7(chunk);
		while (chunk_len > 0 && FUNC3((unsigned char) chunk[chunk_len - 1]))
			chunk_len--;
		chunk[chunk_len] = '\0';

		/* Match to the privileges list */
		for (this_priv = privileges; this_priv->name; this_priv++)
		{
			if (FUNC5(this_priv->name, chunk) == 0)
			{
				result |= this_priv->value;
				break;
			}
		}
		if (!this_priv->name)
			FUNC0(ERROR,
					(FUNC1(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC2("unrecognized privilege type: \"%s\"", chunk)));
	}

	FUNC4(priv_type);
	return result;
}